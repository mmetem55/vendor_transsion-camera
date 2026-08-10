.class public Lcom/transsion/camera/ui/setting/facedetection/GenderView;
.super Ljava/lang/Object;
.source "GenderView.java"


# static fields
.field public static MAN:Ljava/lang/String; = "man"

.field public static WOMAN:Ljava/lang/String; = "woman"

.field private static sDensity:F


# instance fields
.field private FEMALE:Ljava/lang/String;

.field private MALE:Ljava/lang/String;

.field private mBgMarginBottom:I

.field private mBgMarginLeft:I

.field private mBgMarginTop:I

.field private mBgPaddingBottom:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mFaceAttr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceAttrArray:[[Ljava/lang/String;

.field private mFilletRadius:I

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mMarginIconToText:I

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    const-string v1, ""

    .line 42
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MALE:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->FEMALE:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->initGenderParameter(Landroid/content/Context;)V

    .line 47
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/HashMap;

    return-void
.end method

.method private InitIcon(Landroid/content/Context;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const v2, 0x7f08090e

    .line 82
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->getScaleBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f08090d

    .line 83
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->getScaleBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private dpToPixel(F)I
    .locals 0

    .line 102
    sget p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->sDensity:F

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private getScaleBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 p1, 0x41900000    # 18.0f

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->dpToPixel(F)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, v3

    div-float p1, p0, p1

    int-to-float p2, v4

    div-float/2addr p0, p2

    .line 96
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    invoke-virtual {v5, p1, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 98
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method private initGenderParameter(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100147

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MALE:Ljava/lang/String;

    const v0, 0x7f100146

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->FEMALE:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->initPaint(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->InitIcon(Landroid/content/Context;)V

    return-void
.end method

.method private initPaint(Landroid/content/Context;)V
    .locals 4

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 60
    sput p1, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->sDensity:F

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    .line 63
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p1

    .line 64
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginLeft:I

    mul-float v0, p1, v1

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginTop:I

    .line 66
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginBottom:I

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    .line 67
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaddingBottom:I

    .line 68
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFilletRadius:I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    mul-float/2addr p1, v1

    .line 75
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mMarginIconToText:I

    :cond_1
    return-void
.end method


# virtual methods
.method public clearGender()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    return-void
.end method

.method public drawGender(Landroid/graphics/Canvas;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 106
    array-length v3, v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    const/4 v7, 0x0

    aput v3, v5, v7

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    move v3, v7

    .line 107
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_5

    .line 108
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->parseGender(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->parseAge(I)Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v13, v6

    move v12, v7

    goto/16 :goto_5

    .line 114
    :cond_0
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v10, v2, v3

    invoke-virtual {v10}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 115
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v10, v2, v3

    invoke-virtual {v10}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 116
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v10, v2, v3

    invoke-virtual {v10}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 117
    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 119
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/HashMap;

    .line 120
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 121
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v8, v8, v3

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v4

    aput-object v9, v8, v4

    goto :goto_1

    .line 123
    :cond_1
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v11, v10, v3

    aput-object v8, v11, v4

    .line 124
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttr:Ljava/util/HashMap;

    aget-object v10, v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_1
    sget-object v8, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MAN:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, " "

    if-eqz v5, :cond_2

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MALE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v4

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 132
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->FEMALE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFaceAttrArray:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v4

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    :goto_2
    invoke-direct {v0, v8}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v9

    .line 137
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 138
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 141
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 142
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 145
    iget v13, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginLeft:I

    mul-int/2addr v13, v4

    add-int/2addr v13, v11

    iget v14, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mMarginIconToText:I

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    .line 146
    iget v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginTop:I

    add-int/2addr v10, v12

    iget v14, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginBottom:I

    add-int/2addr v10, v14

    .line 149
    aget-object v14, v2, v3

    invoke-virtual {v14}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 150
    aget-object v15, v2, v3

    invoke-virtual {v15}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iget v4, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaddingBottom:I

    sub-int/2addr v15, v4

    sub-int/2addr v15, v10

    int-to-float v4, v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-eqz v5, :cond_3

    .line 152
    iget-object v15, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    const v6, -0x66cd3a01

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 154
    :cond_3
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    const v15, -0x6600cd94

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    :goto_3
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v15, v14

    int-to-float v7, v4

    add-int/2addr v13, v14

    int-to-float v13, v13

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-direct {v6, v15, v7, v13, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 159
    iget v7, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mFilletRadius:I

    int-to-float v10, v7

    int-to-float v7, v7

    iget-object v13, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v10, v7, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 162
    iget v6, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginLeft:I

    add-int v7, v14, v6

    add-int/2addr v7, v11

    iget v10, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mMarginIconToText:I

    add-int/2addr v7, v10

    add-int v10, v4, v9

    int-to-float v10, v10

    sub-int/2addr v9, v12

    int-to-float v9, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    sub-float/2addr v10, v9

    .line 163
    iget v9, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mBgMarginTop:I

    int-to-float v11, v9

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x0

    if-eqz v5, :cond_4

    .line 165
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    aget-object v5, v5, v12

    add-int/2addr v14, v6

    int-to-float v6, v14

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v1, v5, v6, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 167
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mIcons:[Landroid/graphics/Bitmap;

    const/4 v13, 0x1

    aget-object v5, v5, v13

    add-int/2addr v14, v6

    int-to-float v6, v14

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v1, v5, v6, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_4
    int-to-float v4, v7

    int-to-float v5, v10

    .line 169
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v7, v12

    move v6, v13

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public parseAge(I)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x4

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x22

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x14

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 203
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0xc

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public parseGender(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 186
    sget-object p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->MAN:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    .line 188
    sget-object p0, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->WOMAN:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method
