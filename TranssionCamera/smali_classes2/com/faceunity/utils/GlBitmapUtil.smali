.class public Lcom/faceunity/utils/GlBitmapUtil;
.super Ljava/lang/Object;
.source "GlBitmapUtil.java"


# direct methods
.method public static copyRgbaByteFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    new-array v0, v0, [B

    .line 169
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 170
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    return-object v0
.end method
