.class Lcom/transsion/camera/utils/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;,
        Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;,
        Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/transsion/camera/utils/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/transsion/camera/utils/exif/ExifTag;

.field private mTag:Lcom/transsion/camera/utils/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/exif/ExifParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "US-ASCII"

    .line 143
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 166
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 167
    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 168
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_GPS_IFD:S

    .line 169
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 170
    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 171
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 172
    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 173
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 174
    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 175
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 176
    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 177
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 178
    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/transsion/camera/utils/exif/ExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdStartOffset:I

    .line 150
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNumOfTagInIfd:I

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mContainExifData:Z

    .line 160
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 180
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 211
    iput-object p3, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    .line 212
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mContainExifData:Z

    .line 213
    new-instance p3, Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    .line 214
    iput p2, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOptions:I

    .line 215
    iget-boolean p1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mContainExifData:Z

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->parseTiffHeader()V

    .line 220
    invoke-virtual {p3}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 224
    iput p3, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfd0Position:I

    .line 225
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    .line 226
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/utils/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 229
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mDataAboveIfd0:[B

    .line 230
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifParser;->read([B)I

    :cond_2
    return-void

    .line 222
    :cond_3
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Null argument inputStream to ExifParser"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkAllowed(II)Z
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mInterface:Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 641
    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    return p0
.end method

.method private checkOffsetOrImageTag(Lcom/transsion/camera/utils/exif/ExifTag;)V
    .locals 5

    .line 590
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getTagId()S

    move-result v0

    .line 594
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getIfd()I

    move-result v1

    .line 595
    sget-short v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 596
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 597
    invoke-direct {p0, v3}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 598
    :cond_1
    invoke-virtual {p1, v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_1

    .line 600
    :cond_2
    sget-short v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 601
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 602
    invoke-virtual {p1, v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_1

    .line 604
    :cond_3
    sget-short v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 605
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 606
    invoke-direct {p0, v3}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 607
    invoke-virtual {p1, v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_1

    .line 609
    :cond_4
    sget-short v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 610
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 611
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 612
    invoke-virtual {p1, v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->registerCompressedImage(J)V

    goto :goto_1

    .line 614
    :cond_5
    sget-short v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 615
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 617
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mJpegSizeTag:Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_1

    .line 619
    :cond_6
    sget-short v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_8

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 620
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 621
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 622
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_9

    .line 623
    invoke-virtual {p1, v4}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->registerUncompressedStrip(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 626
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;

    invoke-direct {v1, p1, v4}, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;-><init>(Lcom/transsion/camera/utils/exif/ExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 629
    :cond_8
    sget-short v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_9

    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 630
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 632
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mStripSizeTag:Lcom/transsion/camera/utils/exif/ExifTag;

    :cond_9
    :goto_1
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 191
    :cond_0
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 193
    :cond_2
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 189
    :cond_4
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 187
    :cond_6
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 185
    :cond_8
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOptions:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private isThumbnailRequested()Z
    .locals 0

    .line 200
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOptions:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 5

    .line 394
    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v1

    .line 403
    :cond_0
    invoke-direct {p0, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    return p0

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->isThumbnailRequested()Z

    move-result p0

    return p0

    .line 396
    :cond_2
    invoke-direct {p0, v3}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 397
    invoke-direct {p0, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    invoke-direct {p0, v4}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/transsion/camera/utils/exif/ExifInterface;)Lcom/transsion/camera/utils/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/camera/utils/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/transsion/camera/utils/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const-string v1, "Invalid TIFF header"

    const/16 v2, 0x4949

    if-ne v2, v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d4d

    if-ne v2, v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 748
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    return-void

    .line 749
    :cond_1
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;

    invoke-direct {p0, v1}, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 745
    :cond_2
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;

    invoke-direct {p0, v1}, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readTag()Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 539
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 545
    invoke-static {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 546
    sget-object v1, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "Tag %04x: Invalid data type %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 547
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->skip(J)J

    const/4 p0, 0x0

    return-object p0

    .line 551
    :cond_0
    new-instance v10, Lcom/transsion/camera/utils/exif/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    if-eqz v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/utils/exif/ExifTag;-><init>(SSIIZ)V

    .line 553
    invoke-virtual {v10}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 555
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 562
    iget v3, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 563
    new-array v0, v11, [B

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p0, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    invoke-virtual {v10, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int p0, v1

    .line 568
    invoke-virtual {v10, p0}, Lcom/transsion/camera/utils/exif/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 557
    :cond_3
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;

    const-string v0, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 571
    :cond_4
    invoke-virtual {v10}, Lcom/transsion/camera/utils/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 573
    invoke-virtual {v10, v9}, Lcom/transsion/camera/utils/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 575
    invoke-virtual {p0, v10}, Lcom/transsion/camera/utils/exif/ExifParser;->readFullTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V

    .line 576
    invoke-virtual {v10, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->skip(J)J

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v10, p0}, Lcom/transsion/camera/utils/exif/ExifTag;->setOffset(I)V

    :goto_1
    return-object v10

    .line 541
    :cond_5
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;

    const-string v0, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private registerCompressedImage(J)V
    .locals 1

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result p0

    invoke-direct {p3, p1, p0}, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 1

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p1}, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 756
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 760
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 762
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 763
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readInt()I

    move-result p1

    .line 771
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 774
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStartPosition:I

    .line 775
    iput v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mApp1End:I

    add-int/2addr p1, v1

    .line 776
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 781
    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 785
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    .line 782
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Invalid JPEG format."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    return v2

    .line 757
    :cond_4
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;

    const-string p1, "Invalid JPEG format"

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->skipTo(J)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    return-object p0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mJpegSizeTag:Lcom/transsion/camera/utils/exif/ExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 496
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getCurrentIfd()I
    .locals 0

    .line 454
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    return p0
.end method

.method protected getStripIndex()I
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mImageEvent:Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;->mStripIndex:I

    return p0
.end method

.method protected getStripSize()I
    .locals 2

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mStripSizeTag:Lcom/transsion/camera/utils/exif/ExifTag;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 485
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method protected getTag()Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    return-object p0
.end method

.method protected next()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 274
    iget-boolean v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 278
    iget v2, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readTag()Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->next()I

    move-result p0

    return p0

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 285
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->checkOffsetOrImageTag(Lcom/transsion/camera/utils/exif/ExifTag;)V

    :cond_2
    return v4

    :cond_3
    if-ne v0, v2, :cond_8

    .line 290
    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    const-wide/16 v5, 0x0

    if-nez v0, :cond_5

    .line 291
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v7

    .line 292
    invoke-direct {p0, v4}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v7, v5

    if-eqz v0, :cond_8

    .line 294
    invoke-direct {p0, v4, v7, v8}, Lcom/transsion/camera/utils/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    .line 302
    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 305
    sget-object v2, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size of link to next IFD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_8

    .line 309
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 318
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/transsion/camera/utils/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    instance-of v4, v2, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 325
    check-cast v2, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;

    iget v4, v2, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;->mIfd:I

    iput v4, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    .line 326
    iget-object v4, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNumOfTagInIfd:I

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdStartOffset:I

    .line 329
    iget v4, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mApp1End:I

    if-le v4, v0, :cond_9

    .line 330
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of IFD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 334
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 335
    iget-boolean v0, v2, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;->mIsRequested:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 338
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 340
    :cond_b
    instance-of v0, v2, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 341
    check-cast v2, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mImageEvent:Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

    .line 342
    iget p0, v2, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;->mType:I

    return p0

    .line 344
    :cond_c
    check-cast v2, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;

    .line 345
    iget-object v0, v2, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    .line 346
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->readFullTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->checkOffsetOrImageTag(Lcom/transsion/camera/utils/exif/ExifTag;)V

    .line 350
    :cond_d
    iget-boolean v0, v2, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;->mIsRequested:Z

    if-eqz v0, :cond_8

    return v3

    .line 320
    :catch_0
    sget-object v4, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to skip to data at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method protected readFullTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 649
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 650
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 651
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 654
    instance-of v1, v0, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;

    if-eqz v1, :cond_1

    .line 656
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid thumbnail offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    :cond_1
    instance-of v1, v0, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;

    const-string v2, " overlaps value for tag: \n"

    if-eqz v1, :cond_2

    .line 662
    sget-object v1, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ifd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/transsion/camera/utils/exif/ExifParser$IfdEvent;->mIfd:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_2
    instance-of v1, v0, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;

    if-eqz v1, :cond_3

    .line 665
    sget-object v1, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value for tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    .line 666
    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 669
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    .line 670
    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 671
    sget-object v1, Lcom/transsion/camera/utils/exif/ExifParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of tag: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setting count to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->forceSetComponentCount(I)V

    .line 678
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 722
    :pswitch_1
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/transsion/camera/utils/exif/Rational;

    :goto_2
    if-ge v1, v0, :cond_5

    .line 724
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readRational()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 726
    :cond_5
    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([Lcom/transsion/camera/utils/exif/Rational;)Z

    goto/16 :goto_7

    .line 714
    :pswitch_2
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_3
    if-ge v1, v0, :cond_6

    .line 716
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readLong()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 718
    :cond_6
    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 698
    :pswitch_3
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/transsion/camera/utils/exif/Rational;

    :goto_4
    if-ge v1, v0, :cond_7

    .line 700
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedRational()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 702
    :cond_7
    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([Lcom/transsion/camera/utils/exif/Rational;)Z

    goto :goto_7

    .line 690
    :pswitch_4
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [J

    :goto_5
    if-ge v1, v0, :cond_8

    .line 692
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 694
    :cond_8
    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    goto :goto_7

    .line 706
    :pswitch_5
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_6
    if-ge v1, v0, :cond_9

    .line 708
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 710
    :cond_9
    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 687
    :pswitch_6
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 681
    :pswitch_7
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 682
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->read([B)I

    .line 683
    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method protected readRational()Lcom/transsion/camera/utils/exif/Rational;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readLong()I

    move-result v0

    .line 872
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readLong()I

    move-result p0

    .line 873
    new-instance v1, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v2, v0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object v1
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 828
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readLong()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/transsion/camera/utils/exif/Rational;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 856
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 857
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method protected readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected registerForTagValue(Lcom/transsion/camera/utils/exif/ExifTag;)V
    .locals 3

    .line 516
    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/exif/ExifTag;->getOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;-><init>(Lcom/transsion/camera/utils/exif/ExifTag;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/camera/utils/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 366
    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTiffStream:Lcom/transsion/camera/utils/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readTag()Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    if-nez v2, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    invoke-direct {p0, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->checkOffsetOrImageTag(Lcom/transsion/camera/utils/exif/ExifTag;)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifParser;->skipTo(I)V

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 385
    iget v2, p0, Lcom/transsion/camera/utils/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 386
    invoke-direct {p0, v2}, Lcom/transsion/camera/utils/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 388
    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/utils/exif/ExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method
