.class public final Lcom/transsion/motionphoto/MotionPhotoWriter;
.super Ljava/lang/Object;
.source "MotionPhotoWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionPhotoWriter"

.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/transsion/motionphoto/MotionPhotoWriter;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMotionPhotoXmp(JJ)[B
    .registers 6

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\"><rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:Description xmlns:GCamera=\"http://ns.google.com/photos/1.0/camera/\" GCamera:MotionPhoto=\"1\" GCamera:MotionPhotoVersion=\"1\" GCamera:MotionPhotoPresentationTimestampUs=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\" GCamera:MicroVideo=\"1\" GCamera:MicroVideoVersion=\"1\" GCamera:MicroVideoOffset=\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\"/><rdf:Description xmlns:Container=\"http://ns.google.com/photos/1.0/container/\" xmlns:Item=\"http://ns.google.com/photos/1.0/container/item/\"><Container:Directory><rdf:Seq><rdf:li rdf:parseType=\"Resource\"><Container:Item Item:Mime=\"image/jpeg\" Item:Semantic=\"Primary\" Item:Length=\"0\" Item:Padding=\"0\"/></rdf:li><rdf:li rdf:parseType=\"Resource\"><Container:Item Item:Mime=\"video/mp4\" Item:Semantic=\"MotionPhoto\" Item:Length=\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"/></rdf:li></rdf:Seq></Container:Directory></rdf:Description></rdf:RDF></x:xmpmeta>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    sget-object p1, Lcom/transsion/motionphoto/MotionPhotoWriter;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static injectXmp(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result p0

    .line 70
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 71
    const-string v2, "MotionPhotoWriter"

    const/4 v3, 0x0

    const/16 v4, 0xff

    if-ne p0, v4, :cond_60

    const/16 v5, 0xd8

    if-eq v1, v5, :cond_19

    goto :goto_60

    .line 75
    :cond_19
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 76
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 78
    const-string p0, "http://ns.adobe.com/xap/1.0/\u0000"

    sget-object v1, Lcom/transsion/motionphoto/MotionPhotoWriter;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 79
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    array-length v5, p2

    add-int/2addr v1, v5

    .line 80
    const v5, 0xffff

    if-le v1, v5, :cond_37

    .line 81
    const-string p0, "XMP segment too large"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v3

    .line 84
    :cond_37
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 85
    const/16 v2, 0xe1

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 86
    shr-int/lit8 v2, v1, 0x8

    and-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 87
    and-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 88
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 91
    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 93
    :goto_53
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5e

    .line 94
    invoke-virtual {p1, p0, v3, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_53

    .line 96
    :cond_5e
    const/4 p0, 0x1

    return p0

    .line 72
    :cond_60
    :goto_60
    const-string p0, "Invalid JPEG: missing SOI marker"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v3
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 9

    .line 28
    const-string v0, "MotionPhotoWriter"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_70

    .line 32
    :cond_1a
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 33
    invoke-static {v2, v3, p3, p4}, Lcom/transsion/motionphoto/MotionPhotoWriter;->buildMotionPhotoXmp(JJ)[B

    move-result-object p3

    .line 35
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_71

    .line 37
    :try_start_27
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_6b

    .line 39
    :try_start_2c
    invoke-static {p2, p4, p3}, Lcom/transsion/motionphoto/MotionPhotoWriter;->injectXmp(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z

    move-result p0

    if-nez p0, :cond_3f

    .line 40
    const-string p0, "Failed to inject XMP segment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_66

    .line 41
    nop

    .line 44
    :try_start_38
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_6b

    .line 57
    :try_start_3b
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_71

    .line 41
    return v1

    .line 44
    :cond_3f
    :try_start_3f
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 45
    nop

    .line 46
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_6b

    .line 48
    const/16 p1, 0x2000

    :try_start_4a
    new-array p1, p1, [B

    .line 50
    :goto_4c
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_57

    .line 51
    invoke-virtual {p4, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_61

    goto :goto_4c

    .line 54
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_6b

    .line 55
    nop

    .line 57
    :try_start_5b
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_71

    .line 58
    nop

    .line 59
    const/4 p0, 0x1

    return p0

    .line 54
    :catchall_61
    move-exception p1

    :try_start_62
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 55
    throw p1

    .line 44
    :catchall_66
    move-exception p0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 45
    throw p0
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_6b

    .line 57
    :catchall_6b
    move-exception p0

    :try_start_6c
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    .line 58
    throw p0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_71

    .line 30
    :cond_70
    :goto_70
    return v1

    .line 60
    :catchall_71
    move-exception p0

    .line 61
    const-string p1, "Failed to write Motion Photo"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return v1
.end method
