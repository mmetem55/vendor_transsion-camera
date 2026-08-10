.class Lcom/transsion/camera/utils/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/exif/ExifReader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifReader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/utils/exif/ExifInterface;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifReader;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/transsion/camera/utils/exif/ExifData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifReader;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/transsion/camera/utils/exif/ExifInterface;)Lcom/transsion/camera/utils/exif/ExifParser;

    move-result-object p0

    .line 48
    new-instance p1, Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 51
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v1, v0, [B

    .line 82
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->read([B)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getStripIndex()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 85
    :cond_1
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifReader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to read the strip bytes"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v1, v0, [B

    .line 74
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->read([B)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 75
    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 77
    :cond_3
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifReader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to read the compressed thumbnail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getTag()Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 68
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->readFullTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V

    .line 70
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_1

    .line 58
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getTag()Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->hasValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 60
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->registerForTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V

    goto :goto_1

    .line 62
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/exif/ExifData;->getIfdData(I)Lcom/transsion/camera/utils/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/exif/IfdData;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_1

    .line 55
    :cond_8
    new-instance v0, Lcom/transsion/camera/utils/exif/IfdData;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->getCurrentIfd()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/exif/IfdData;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/exif/ExifData;->addIfdData(Lcom/transsion/camera/utils/exif/IfdData;)V

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_9
    return-object p1
.end method
