.class Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;
.super Lcom/transsion/camera/feature/common/BasePreview;
.source "BurstPMKPreview.java"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;


# static fields
.field private static final DEFAULT_OFFSET:Landroid/graphics/Point;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private final mContext:Landroid/content/Context;

.field private mDirection:I

.field private mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private volatile mOffset:Landroid/graphics/Point;

.field private final mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 38
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BasePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 55
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mContext:Landroid/content/Context;

    .line 57
    new-instance p1, Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-direct {p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    .line 58
    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setLineWidth(F)V

    return-void
.end method

.method private convertRotationX(III)I
    .locals 0

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    return p1
.end method

.method private convertRotationY(III)I
    .locals 0

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    return p1
.end method

.method private drawArrow(IILandroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 7

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWidth:I

    .line 318
    iget v6, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowHeight:I

    .line 319
    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    add-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    .line 320
    iget v2, p3, Landroid/graphics/Point;->y:I

    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v0, v6

    const/4 v3, 0x1

    shr-int/2addr v0, v3

    add-int/2addr v2, v0

    iget v0, p4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    .line 322
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x0

    .line 324
    invoke-static {v4, v4, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-ne v3, p5, :cond_2

    .line 327
    iget p3, p3, Landroid/graphics/Point;->x:I

    iget-object p4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    add-int/2addr p3, p5

    iget p4, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    add-int/2addr p3, p4

    if-ge v1, p3, :cond_0

    move v1, p3

    .line 331
    :cond_0
    invoke-direct {p0, p1, v1, v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->convertRotationX(III)I

    move-result v3

    .line 332
    invoke-direct {p0, p2, v2, v6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->convertRotationY(III)I

    move-result v4

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->save(I)V

    const/16 p1, 0xb4

    .line 335
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->rotateCanvas(I)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    if-lez p2, :cond_1

    if-le v0, p2, :cond_1

    iget-boolean p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWarn:Z

    if-eqz p1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    .line 343
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->restore()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne p2, p5, :cond_5

    .line 345
    iget p2, p3, Landroid/graphics/Point;->x:I

    sub-int p2, p1, p2

    iget-object p3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p5, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    sub-int/2addr p2, p5

    sub-int/2addr p1, p2

    iget p2, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr p1, p2

    iget p2, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowPadding:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v5

    .line 346
    iget p2, p4, Landroid/graphics/Point;->x:I

    sub-int p2, p1, p2

    if-le p2, p1, :cond_3

    move p2, p1

    .line 351
    :cond_3
    iget p1, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mWarningOffset:I

    if-lez p1, :cond_4

    if-le v0, p1, :cond_4

    iget-boolean p1, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWarn:Z

    if-eqz p1, :cond_4

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    move-object p0, p1

    move-object p1, p3

    move p3, v2

    move p4, v5

    move p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    goto :goto_1

    .line 356
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    move-object p0, p1

    move-object p1, p3

    move p3, v2

    move p4, v5

    move p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method private drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    .line 260
    iget-object v5, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v13, v5, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 261
    iget v6, v5, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    const/4 v14, 0x0

    const/4 v7, 0x1

    if-ne v7, v4, :cond_0

    .line 266
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    if-ne v7, v4, :cond_1

    .line 268
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v7, v5, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    add-int/2addr v4, v7

    iget v7, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v7

    sub-int/2addr v4, v13

    goto :goto_0

    :cond_1
    move v4, v14

    .line 271
    :goto_0
    iget v7, v2, Landroid/graphics/Point;->x:I

    if-lt v4, v7, :cond_4

    add-int v8, v4, v13

    iget v5, v5, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    add-int/2addr v7, v5

    if-le v8, v7, :cond_2

    goto :goto_2

    .line 275
    :cond_2
    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v6, v5

    .line 277
    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_3

    .line 278
    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v5

    goto :goto_1

    .line 280
    :cond_3
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    add-int/2addr v2, v3

    :goto_1
    sub-int v2, v1, v2

    .line 283
    iget-object v6, v0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object/from16 v7, p1

    move/from16 v8, p2

    move v9, v4

    move v10, v2

    move v11, v13

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 285
    iget-object v3, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz v3, :cond_4

    sub-int v2, v1, v2

    sub-int/2addr v2, v5

    move/from16 v3, p3

    .line 287
    invoke-static {v14, v14, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 288
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object v3, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 289
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, v4

    int-to-float v2, v2

    int-to-float v4, v13

    int-to-float v5, v5

    iget-object v0, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    move-object p0, v1

    move/from16 p1, v3

    move/from16 p2, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private drawDotted(Landroid/graphics/Point;Landroid/graphics/Point;III)V
    .locals 3

    .line 210
    iget p5, p1, Landroid/graphics/Point;->x:I

    .line 211
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 212
    invoke-virtual {v1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    iget v0, p2, Landroid/graphics/Point;->y:I

    sub-int v0, p1, v0

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getHeight()I

    move-result v2

    const/4 p1, 0x0

    .line 216
    invoke-static {p1, p1, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 218
    iget p1, p2, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    move-object p0, p1

    move-object p1, p2

    move p2, p5

    move p3, v0

    move p4, v1

    move p5, v2

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    :cond_0
    return-void
.end method

.method private drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;I)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    .line 296
    iget-object v3, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v11, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 297
    iget v12, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 298
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 299
    iget v5, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v12

    sub-int v8, v1, v5

    const/4 v5, 0x2

    move/from16 v6, p6

    if-ne v5, v6, :cond_0

    .line 302
    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v11

    :cond_0
    move v3, v4

    .line 305
    iget-object v4, v0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object v5, p1

    move v6, p2

    move v7, v3

    move v9, v11

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 307
    iget-object v4, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz v4, :cond_1

    .line 308
    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    move/from16 v5, p3

    .line 309
    invoke-static {v4, v4, v5, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 310
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object v4, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {v1, v4}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 311
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v4, v11

    int-to-float v5, v12

    iget-object v0, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    move-object p0, v1

    move p1, v3

    move p2, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_1
    return-void
.end method

.method private drawStitchThumbnail(IILandroid/graphics/Point;)V
    .locals 6

    .line 246
    iget p1, p3, Landroid/graphics/Point;->x:I

    .line 247
    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    add-int/2addr p3, v3

    sub-int v2, p2, p3

    .line 249
    iget p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    const/4 p3, 0x2

    if-ne p3, p2, :cond_0

    .line 250
    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    sub-int/2addr p2, p3

    add-int/2addr p1, p2

    :cond_0
    move v1, p1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    iget v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    iget-object v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->draw(IIIILjava/nio/ByteBuffer;)V

    return-void
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 98
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 100
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private rotateCanvas(I)V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 233
    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 234
    div-int/lit8 v1, v1, 0x2

    .line 235
    div-int/lit8 v0, v0, 0x2

    .line 236
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    .line 237
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4, v4, v5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->rotate(FFFF)V

    .line 238
    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    neg-int p1, v0

    int-to-float p1, p1

    neg-int v0, v1

    int-to-float v0, v0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    neg-int p1, v1

    int-to-float p1, p1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createGLProgram()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_left_arrow:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mArrowWarn:Z

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_left_arrow_warning:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mDotted:Z

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_dotted_line:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    :cond_2
    return-void
.end method

.method protected destroyGLProgram()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 125
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 129
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 133
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 136
    :cond_2
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->destroyGLProgram()V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-nez v0, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {v0, p3, p4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setSize(II)V

    .line 160
    invoke-virtual {p0, p3, p4}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawBackground(II)V

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawThumbnail(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    .line 151
    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "draw mBgr2dProgram: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mSurface2dProgram: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method protected drawBackground(II)V
    .locals 10

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 170
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 171
    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 172
    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 173
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v4, v0

    int-to-float v5, p2

    int-to-float v6, v1

    int-to-float v7, v2

    iget v8, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBgColor:I

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 176
    iget v0, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderHeight:I

    .line 177
    iget-object v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 178
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 179
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v5, v3

    int-to-float v6, v1

    int-to-float v7, p2

    int-to-float v8, v0

    iget v9, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mLineColor:I

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method protected drawThumbnail(Landroid/graphics/SurfaceTexture;I)V
    .locals 14

    move-object v8, p0

    .line 184
    iget-boolean v0, v8, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 185
    iget v9, v8, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    .line 186
    iget-object v10, v8, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    .line 187
    iget-object v1, v8, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v11, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 188
    iget v12, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 189
    iget-object v13, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbnailStartPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 192
    iget-boolean v0, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mDotted:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, v13

    move-object v2, v10

    move v3, v11

    move v4, v12

    move v5, v9

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawDotted(Landroid/graphics/Point;Landroid/graphics/Point;III)V

    .line 195
    :cond_0
    invoke-direct {p0, v11, v12, v13}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawStitchThumbnail(IILandroid/graphics/Point;)V

    .line 196
    iget-object v0, v8, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mCaptureThumbnail:Z

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v10

    move v7, v9

    .line 197
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;Landroid/graphics/Point;I)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v9

    .line 201
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;I)V

    :cond_2
    :goto_0
    move-object v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move-object v4, v10

    move v5, v9

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawArrow(IILandroid/graphics/Point;Landroid/graphics/Point;I)V

    return-void
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureEnd()V

    .line 92
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureFailed()V

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onDirectionChange(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    return-void
.end method

.method public onMoveProgress(Landroid/graphics/Point;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    :cond_0
    return-void
.end method

.method public onThumbnailUpdate([BIII)V
    .locals 6

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 71
    iget-object p4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v5, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/common/BasePreview;->onThumbnailUpdate([BIIII)V

    :cond_0
    return-void
.end method
