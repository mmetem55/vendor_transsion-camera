/*
 * Ported from PhotonCamera (https://github.com/bjzhou/PhotonCamera), Apache-2.0.
*/

package com.transsion.motionphoto;

import android.util.Log;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

public final class MotionPhotoWriter {
    private static final String TAG = "MotionPhotoWriter";
    private static final Charset UTF8 = Charset.forName("UTF-8");

    private MotionPhotoWriter() {}

    /** JPEG (with injected XMP APP1) followed directly by the raw MP4 bytes. */
    public static boolean write(String jpegPath, String videoPath, String outputPath,
                                long presentationTimestampUs) {
        try {
            File jpegFile = new File(jpegPath);
            File videoFile = new File(videoPath);
            if (!jpegFile.exists() || !videoFile.exists()) return false;

            long videoLength = videoFile.length();
            byte[] xmp = buildMotionPhotoXmp(videoLength, presentationTimestampUs);

            OutputStream output = new FileOutputStream(outputPath);
            try {
                InputStream jpegInput = new FileInputStream(jpegPath);
                try {
                    if (!injectXmp(jpegInput, output, xmp)) {
                        Log.e(TAG, "Failed to inject XMP segment");
                        return false;
                    }
                } finally {
                    jpegInput.close();
                }
                InputStream videoInput = new FileInputStream(videoPath);
                try {
                    byte[] buffer = new byte[8192];
                    int read;
                    while ((read = videoInput.read(buffer)) != -1) {
                        output.write(buffer, 0, read);
                    }
                } finally {
                    videoInput.close();
                }
            } finally {
                output.close();
            }
            return true;
        } catch (Throwable e) {
            Log.e(TAG, "Failed to write Motion Photo", e);
            return false;
        }
    }

    private static boolean injectXmp(InputStream input, OutputStream output, byte[] xmpData)
            throws IOException {
        BufferedInputStream bis = new BufferedInputStream(input);
        int b1 = bis.read();
        int b2 = bis.read();
        if (b1 != 0xFF || b2 != 0xD8) {
            Log.e(TAG, "Invalid JPEG: missing SOI marker");
            return false;
        }
        output.write(b1);
        output.write(b2);

        byte[] ns = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(UTF8);
        int segmentLength = 2 + ns.length + xmpData.length;
        if (segmentLength > 65535) {
            Log.e(TAG, "XMP segment too large");
            return false;
        }
        output.write(0xFF);
        output.write(0xE1);
        output.write((segmentLength >> 8) & 0xFF);
        output.write(segmentLength & 0xFF);
        output.write(ns);
        output.write(xmpData);

        byte[] buffer = new byte[8192];
        int len;
        while ((len = bis.read(buffer)) != -1) {
            output.write(buffer, 0, len);
        }
        return true;
    }

    private static byte[] buildMotionPhotoXmp(long videoLength, long presentationTimestampUs) {
        String xmp =
            "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\">"
          + "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"
          + "<rdf:Description xmlns:GCamera=\"http://ns.google.com/photos/1.0/camera/\""
          + " GCamera:MotionPhoto=\"1\""
          + " GCamera:MotionPhotoVersion=\"1\""
          + " GCamera:MotionPhotoPresentationTimestampUs=\"" + presentationTimestampUs + "\""
          + " GCamera:MicroVideo=\"1\""
          + " GCamera:MicroVideoVersion=\"1\""
          + " GCamera:MicroVideoOffset=\"" + videoLength + "\"/>"
          + "<rdf:Description xmlns:Container=\"http://ns.google.com/photos/1.0/container/\""
          + " xmlns:Item=\"http://ns.google.com/photos/1.0/container/item/\">"
          + "<Container:Directory><rdf:Seq>"
          + "<rdf:li rdf:parseType=\"Resource\"><Container:Item"
          + " Item:Mime=\"image/jpeg\" Item:Semantic=\"Primary\" Item:Length=\"0\" Item:Padding=\"0\"/></rdf:li>"
          + "<rdf:li rdf:parseType=\"Resource\"><Container:Item"
          + " Item:Mime=\"video/mp4\" Item:Semantic=\"MotionPhoto\" Item:Length=\"" + videoLength + "\"/></rdf:li>"
          + "</rdf:Seq></Container:Directory>"
          + "</rdf:Description>"
          + "</rdf:RDF></x:xmpmeta>";
        return xmp.getBytes(UTF8);
    }
}
