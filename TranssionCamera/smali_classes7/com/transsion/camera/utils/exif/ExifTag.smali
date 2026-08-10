.class public Lcom/transsion/camera/utils/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "US-ASCII"

    .line 71
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 72
    sput-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x4

    aput v2, v0, v2

    const/4 v3, 0x5

    const/16 v4, 0x8

    aput v4, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-short p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    .line 145
    iput-short p2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 146
    iput p3, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    .line 147
    iput-boolean p5, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 148
    iput p4, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1

    .line 951
    iget-boolean v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkOverflowForRational([Lcom/transsion/camera/utils/exif/Rational;)Z
    .locals 7

    .line 1019
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    .line 1020
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 1021
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 1022
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 3

    .line 999
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 6

    .line 990
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private checkOverflowForUnsignedRational([Lcom/transsion/camera/utils/exif/Rational;)Z
    .locals 7

    .line 1008
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    .line 1009
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 1010
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 1011
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 4

    .line 981
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget v2, p1, v1

    const v3, 0xffff

    if-gt v2, v3, :cond_1

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    return-object p0

    :pswitch_1
    const-string p0, "RATIONAL"

    return-object p0

    :pswitch_2
    const-string p0, "LONG"

    return-object p0

    :pswitch_3
    const-string p0, "UNDEFINED"

    return-object p0

    :pswitch_4
    const-string p0, "UNSIGNED_RATIONAL"

    return-object p0

    :pswitch_5
    const-string p0, "UNSIGNED_LONG"

    return-object p0

    :pswitch_6
    const-string p0, "UNSIGNED_SHORT"

    return-object p0

    :pswitch_7
    const-string p0, "ASCII"

    return-object p0

    :pswitch_8
    const-string p0, "UNSIGNED_BYTE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1

    .line 167
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget p0, v0, p0

    return p0
.end method

.method public static isValidIfd(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidType(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1034
    :cond_0
    instance-of v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;

    if-eqz v1, :cond_a

    .line 1035
    check-cast p1, Lcom/transsion/camera/utils/exif/ExifTag;

    .line 1036
    iget-short v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    iget-short v2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    if-ne v1, v2, :cond_a

    iget v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    iget v2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v2, :cond_a

    iget-short v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    iget-short v2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1041
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_9

    .line 1042
    iget-object p1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    .line 1044
    :cond_2
    instance-of v1, p0, [J

    if-eqz v1, :cond_4

    .line 1045
    instance-of v1, p1, [J

    if-nez v1, :cond_3

    return v0

    .line 1048
    :cond_3
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 1049
    :cond_4
    instance-of v1, p0, [Lcom/transsion/camera/utils/exif/Rational;

    if-eqz v1, :cond_6

    .line 1050
    instance-of v1, p1, [Lcom/transsion/camera/utils/exif/Rational;

    if-nez v1, :cond_5

    return v0

    .line 1053
    :cond_5
    check-cast p0, [Lcom/transsion/camera/utils/exif/Rational;

    check-cast p1, [Lcom/transsion/camera/utils/exif/Rational;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1054
    :cond_6
    instance-of v1, p0, [B

    if-eqz v1, :cond_8

    .line 1055
    instance-of v1, p1, [B

    if-nez v1, :cond_7

    return v0

    .line 1058
    :cond_7
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 1060
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1063
    :cond_9
    iget-object p0, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    :goto_0
    return v0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 4

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 813
    :cond_0
    instance-of v2, v0, [B

    if-eqz v2, :cond_2

    .line 814
    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 815
    new-instance p0, Ljava/lang/String;

    check-cast v0, [B

    sget-object v1, Lcom/transsion/camera/utils/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 817
    :cond_1
    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 819
    :cond_2
    instance-of p0, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_4

    .line 820
    move-object p0, v0

    check-cast p0, [J

    array-length p0, p0

    if-ne p0, v3, :cond_3

    .line 821
    check-cast v0, [J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :cond_3
    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 825
    :cond_4
    instance-of p0, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_7

    .line 826
    move-object p0, v0

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-ne p0, v3, :cond_6

    .line 827
    check-cast v0, [Ljava/lang/Object;

    aget-object p0, v0, v2

    if-nez p0, :cond_5

    return-object v1

    .line 831
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 834
    :cond_6
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 837
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    return-void
.end method

.method protected getBytes([B)V
    .locals 2

    .line 905
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->getBytes([BII)V

    return-void
.end method

.method protected getBytes([BII)V
    .locals 2

    .line 919
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot get BYTE value from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 921
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 923
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 924
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-le p3, p0, :cond_2

    move p3, p0

    .line 923
    :cond_2
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getComponentCount()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    return p0
.end method

.method public getDataSize()I
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getElementSize(S)I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public getDataType()S
    .locals 0

    .line 211
    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    return p0
.end method

.method public getIfd()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    return p0
.end method

.method protected getOffset()I
    .locals 0

    .line 932
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mOffset:I

    return p0
.end method

.method protected getRational(I)Lcom/transsion/camera/utils/exif/Rational;
    .locals 2

    .line 894
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get RATIONAL value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 896
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 898
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [Lcom/transsion/camera/utils/exif/Rational;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected getStringByte()[B
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0
.end method

.method public getTagId()S
    .locals 0

    .line 194
    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getValueAsInt(I)I
    .locals 2

    .line 734
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAsInts()[I

    move-result-object p0

    if-eqz p0, :cond_1

    .line 735
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 738
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public getValueAsInts()[I
    .locals 4

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 713
    :cond_0
    instance-of v1, p0, [J

    if-eqz v1, :cond_1

    .line 714
    check-cast p0, [J

    .line 715
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 716
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 717
    aget-wide v2, p0, v1

    long-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getValueAt(I)J
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [J

    if-eqz v1, :cond_0

    .line 855
    check-cast v0, [J

    aget-wide p0, v0, p1

    return-wide p0

    .line 856
    :cond_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 857
    check-cast v0, [B

    aget-byte p0, v0, p1

    int-to-long p0, p0

    return-wide p0

    .line 859
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get integer value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 860
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected hasDefinedCount()Z
    .locals 0

    .line 947
    iget-boolean p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return p0
.end method

.method public hasValue()Z
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0

    .line 943
    iput-boolean p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return-void
.end method

.method protected setIfd(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    return-void
.end method

.method protected setOffset(I)V
    .locals 0

    .line 939
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mOffset:I

    return-void
.end method

.method public setValue(B)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 498
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0
.end method

.method public setValue(I)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 303
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0
.end method

.method public setValue(J)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 346
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/transsion/camera/utils/exif/Rational;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/transsion/camera/utils/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 440
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 519
    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    const v2, 0xffff

    if-eqz v1, :cond_1

    .line 520
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    and-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    move-result p0

    return p0

    .line 521
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 522
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 523
    :cond_2
    instance-of v1, p1, [I

    if-eqz v1, :cond_3

    .line 524
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 525
    :cond_3
    instance-of v1, p1, [J

    if-eqz v1, :cond_4

    .line 526
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0

    .line 527
    :cond_4
    instance-of v1, p1, Lcom/transsion/camera/utils/exif/Rational;

    if-eqz v1, :cond_5

    .line 528
    check-cast p1, Lcom/transsion/camera/utils/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result p0

    return p0

    .line 529
    :cond_5
    instance-of v1, p1, [Lcom/transsion/camera/utils/exif/Rational;

    if-eqz v1, :cond_6

    .line 530
    check-cast p1, [Lcom/transsion/camera/utils/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result p0

    return p0

    .line 531
    :cond_6
    instance-of v1, p1, [B

    if-eqz v1, :cond_7

    .line 532
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0

    .line 533
    :cond_7
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 534
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    move-result p0

    return p0

    .line 535
    :cond_8
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 536
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(J)Z

    move-result p0

    return p0

    .line 537
    :cond_9
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_a

    .line 538
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(B)Z

    move-result p0

    return p0

    .line 539
    :cond_a
    instance-of v1, p1, [Ljava/lang/Short;

    if-eqz v1, :cond_d

    .line 541
    check-cast p1, [Ljava/lang/Short;

    .line 542
    array-length v1, p1

    new-array v1, v1, [I

    move v3, v0

    .line 543
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_c

    .line 544
    aget-object v4, p1, v3

    if-nez v4, :cond_b

    move v4, v0

    goto :goto_1

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    and-int/2addr v4, v2

    :goto_1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    :cond_c
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 547
    :cond_d
    instance-of v1, p1, [Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 549
    check-cast p1, [Ljava/lang/Integer;

    .line 550
    array-length v1, p1

    new-array v1, v1, [I

    move v2, v0

    .line 551
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_f

    .line 552
    aget-object v3, p1, v2

    if-nez v3, :cond_e

    move v3, v0

    goto :goto_3

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_3
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 554
    :cond_f
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 555
    :cond_10
    instance-of v1, p1, [Ljava/lang/Long;

    if-eqz v1, :cond_13

    .line 557
    check-cast p1, [Ljava/lang/Long;

    .line 558
    array-length v1, p1

    new-array v1, v1, [J

    .line 559
    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 560
    aget-object v2, p1, v0

    if-nez v2, :cond_11

    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 562
    :cond_12
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0

    .line 563
    :cond_13
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_16

    .line 565
    check-cast p1, [Ljava/lang/Byte;

    .line 566
    array-length v1, p1

    new-array v1, v1, [B

    move v2, v0

    .line 567
    :goto_6
    array-length v3, p1

    if-ge v2, v3, :cond_15

    .line 568
    aget-object v3, p1, v2

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_7

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_7
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 570
    :cond_15
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0

    :cond_16
    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 5

    .line 369
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return v3

    .line 373
    :cond_0
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 375
    array-length v0, p1

    const/4 v4, 0x1

    if-lez v0, :cond_2

    .line 376
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    if-eqz v0, :cond_3

    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    array-length v0, p1

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    .line 378
    :cond_2
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-ne v0, v4, :cond_3

    new-array p1, v4, [B

    aput-byte v3, p1, v3

    .line 381
    :cond_3
    :goto_0
    array-length v0, p1

    .line 382
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 385
    :cond_4
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    .line 386
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    return v4
.end method

.method public setValue([B)Z
    .locals 2

    .line 481
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([BII)Z

    move-result p0

    return p0
.end method

.method public setValue([BII)Z
    .locals 4

    .line 462
    invoke-direct {p0, p3}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 465
    :cond_0
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    return v1

    .line 468
    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 469
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    iput p3, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    return v2
.end method

.method public setValue([I)Z
    .locals 5

    .line 266
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 269
    :cond_0
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 273
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 275
    :cond_2
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 279
    :cond_3
    array-length v0, p1

    new-array v0, v0, [J

    .line 280
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 281
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_4
    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 284
    array-length p1, p1

    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0
.end method

.method public setValue([J)Z
    .locals 3

    .line 322
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 328
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 329
    array-length p1, p1

    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public setValue([Lcom/transsion/camera/utils/exif/Rational;)Z
    .locals 4

    .line 407
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 410
    :cond_0
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 413
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 415
    :cond_2
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForRational([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 419
    :cond_3
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 420
    array-length p1, p1

    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "tag id: %04X\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 1072
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
