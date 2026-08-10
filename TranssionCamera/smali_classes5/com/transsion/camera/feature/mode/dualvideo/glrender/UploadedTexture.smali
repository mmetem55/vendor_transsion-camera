.class public abstract Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;
.super Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$1;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;II)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    .line 40
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mIsUploading:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mOpaque:Z

    .line 42
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setBorder(Z)V

    .line 53
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 98
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setSize(II)V

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 59
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    .line 60
    iput-boolean p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->vertical:Z

    .line 61
    iput-object p1, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 62
    iput p2, v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->length:I

    .line 63
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 66
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 68
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->clone()Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    sput v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .line 78
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private uploadToCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 166
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 167
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureWidth()I

    move-result v11

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getTextureHeight()I

    move-result v12

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->getGLId()Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLId;->generateTexture()I

    move-result v1

    iput v1, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mId:I

    .line 175
    invoke-interface {v0, v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->setTextureParameters(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)V

    const/4 v13, 0x1

    if-ne v9, v11, :cond_0

    if-ne v10, v12, :cond_0

    .line 178
    invoke-interface {v0, v8, v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->initializeTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 180
    :cond_0
    invoke-static {v5}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v14

    .line 181
    invoke-static {v5}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v15

    .line 182
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 184
    invoke-interface {v0, v8, v14, v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->initializeTextureSize(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;II)V

    .line 185
    iget v4, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v3, v4

    move v6, v14

    move-object v0, v7

    move v7, v15

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 187
    iget v1, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    const/4 v7, 0x0

    if-lez v1, :cond_1

    .line 189
    invoke-static {v13, v0, v12}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v14

    move v13, v7

    move v7, v15

    .line 190
    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 193
    invoke-static {v13, v0, v11}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v14

    move v7, v15

    .line 194
    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    goto :goto_0

    :cond_1
    move v13, v7

    .line 198
    :goto_0
    iget v1, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int/2addr v1, v9

    if-ge v1, v11, :cond_2

    const/4 v1, 0x1

    .line 199
    invoke-static {v1, v0, v12}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 200
    iget v1, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int v3, v1, v9

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v14

    move v7, v15

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 204
    :cond_2
    iget v1, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int/2addr v1, v10

    if-ge v1, v12, :cond_3

    .line 205
    invoke-static {v13, v0, v11}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    .line 206
    iget v0, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    add-int v4, v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v14

    move v7, v15

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    .line 213
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    const/4 v0, 0x1

    .line 214
    iput v0, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    .line 215
    iput-boolean v0, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    return-void

    :catchall_0
    move-exception v0

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    .line 211
    throw v0

    :cond_4
    const/4 v0, -0x1

    .line 217
    iput v0, v8, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Texture load fail, no bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 118
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 119
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    return p0
.end method

.method protected getTarget()I
    .locals 0

    const/16 p0, 0xde1

    return p0
.end method

.method public getWidth()I
    .locals 2

    .line 112
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 113
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    return p0
.end method

.method protected invalidateContent()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    .line 130
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpaque()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mOpaque:Z

    return p0
.end method

.method public isUploading()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mIsUploading:Z

    return p0
.end method

.method protected onBind(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)Z
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->updateContent(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->isContentValid()Z

    move-result p0

    return p0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .line 244
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->recycle()V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V
    .locals 9

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->uploadToCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 153
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 154
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 155
    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBorder:I

    move-object v2, p1

    move-object v3, p0

    move v4, v5

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->freeBitmap()V

    .line 157
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mContentValid:Z

    :cond_2
    :goto_0
    return-void
.end method
