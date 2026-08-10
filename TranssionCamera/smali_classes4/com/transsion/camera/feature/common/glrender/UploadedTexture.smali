.class public abstract Lcom/transsion/camera/feature/common/glrender/UploadedTexture;
.super Lcom/transsion/camera/feature/common/glrender/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;",
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

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;-><init>(Lcom/transsion/camera/feature/common/glrender/UploadedTexture$1;)V

    sput-object v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;-><init>(Lcom/transsion/camera/feature/common/glrender/GLCanvas;II)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    .line 42
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mIsUploading:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mOpaque:Z

    .line 44
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setBorder(Z)V

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Z)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 100
    iget v2, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setSize(II)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderKey:Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    .line 62
    iput-boolean p0, v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->vertical:Z

    .line 63
    iput-object p1, v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 64
    iput p2, v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->length:I

    .line 65
    sget-object v1, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 68
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 70
    sget-object p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;->clone()Lcom/transsion/camera/feature/common/glrender/UploadedTexture$BorderKey;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public static resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    sput v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .line 80
    sget v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private uploadToCanvas(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 169
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 170
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->getTextureWidth()I

    move-result v11

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->getTextureHeight()I

    move-result v12

    const/4 v14, 0x1

    if-gt v9, v11, :cond_0

    if-gt v10, v12, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Z)V

    .line 179
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->getGLId()Lcom/transsion/camera/feature/common/glrender/GLId;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/feature/common/glrender/GLId;->generateTexture()I

    move-result v1

    iput v1, v8, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mId:I

    .line 180
    invoke-interface {v0, v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setTextureParameters(Lcom/transsion/camera/feature/common/glrender/BasicTexture;)V

    if-ne v9, v11, :cond_1

    if-ne v10, v12, :cond_1

    .line 183
    invoke-interface {v0, v8, v5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->initializeTexture(Lcom/transsion/camera/feature/common/glrender/BasicTexture;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 185
    :cond_1
    invoke-static {v5}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v15

    .line 186
    invoke-static {v5}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 187
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 189
    invoke-interface {v0, v8, v15, v7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->initializeTextureSize(Lcom/transsion/camera/feature/common/glrender/BasicTexture;II)V

    .line 190
    iget v4, v8, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v3, v4

    move-object v13, v6

    move v6, v15

    move/from16 v16, v7

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 192
    iget v1, v8, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    if-lez v1, :cond_2

    .line 194
    invoke-static {v14, v13, v12}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    .line 195
    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    const/4 v1, 0x0

    .line 198
    invoke-static {v1, v13, v11}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    .line 199
    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 203
    :cond_2
    iget v1, v8, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int/2addr v1, v9

    if-ge v1, v11, :cond_3

    .line 204
    invoke-static {v14, v13, v12}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 205
    iget v1, v8, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int v3, v1, v9

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 209
    :cond_3
    iget v1, v8, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int/2addr v1, v10

    if-ge v1, v12, :cond_4

    const/4 v1, 0x0

    .line 210
    invoke-static {v1, v13, v11}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    .line 211
    iget v1, v8, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    add-int v4, v1, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    .line 218
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V

    .line 219
    iput v14, v8, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mState:I

    .line 220
    iput-boolean v14, v8, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    return-void

    :catchall_0
    move-exception v0

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    .line 216
    throw v0

    :cond_5
    const/4 v0, -0x1

    .line 222
    iput v0, v8, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mState:I

    .line 223
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Texture load fail, no bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 121
    iget v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 122
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mHeight:I

    return p0
.end method

.method protected getTarget()I
    .locals 0

    const/16 p0, 0xde1

    return p0
.end method

.method public getWidth()I
    .locals 2

    .line 115
    iget v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 116
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    return p0
.end method

.method protected invalidateContent()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mWidth:I

    .line 133
    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

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

    .line 240
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mOpaque:Z

    return p0
.end method

.method public isUploading()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mIsUploading:Z

    return p0
.end method

.method protected onBind(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)Z
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->updateContent(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->isContentValid()Z

    move-result p0

    return p0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .line 249
    invoke-super {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->recycle()V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mThrottled:Z

    return-void
.end method

.method public updateContent(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V
    .locals 9

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 150
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->uploadToCanvas(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 156
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 157
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 158
    iget v5, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mBorder:I

    move-object v2, p1

    move-object v3, p0

    move v4, v5

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->texSubImage2D(Lcom/transsion/camera/feature/common/glrender/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->freeBitmap()V

    .line 160
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->mContentValid:Z

    :cond_2
    :goto_0
    return-void
.end method
