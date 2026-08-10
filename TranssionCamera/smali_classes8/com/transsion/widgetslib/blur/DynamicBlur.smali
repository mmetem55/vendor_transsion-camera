.class public Lcom/transsion/widgetslib/blur/DynamicBlur;
.super Ljava/lang/Object;
.source "DynamicBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/blur/DynamicBlur$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicBlur"


# instance fields
.field private mCallback:Lcom/transsion/widgetslib/blur/DynamicBlur$Callback;

.field private mEraseColor:I

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInput:Landroid/renderscript/Allocation;

.field private mIsClipToPadding:Z

.field private mIsScrollView:Z

.field private mOutBitmap:Landroid/graphics/Bitmap;

.field private mOutput:Landroid/renderscript/Allocation;

.field private mRadius:I

.field private final mRectBlur:Landroid/graphics/Rect;

.field private final mRectBlurred:Landroid/graphics/Rect;

.field private final mRectIntersect:Landroid/graphics/Rect;

.field private final mRenderScript:Landroid/renderscript/RenderScript;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mScaleFactor:I

.field private final mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mScrollViewBitmap:Landroid/graphics/Bitmap;

.field private mViewBlur:Landroid/view/View;

.field private mViewBlurBg:Landroid/graphics/drawable/BitmapDrawable;

.field private mViewBlurBitmap:Landroid/graphics/Bitmap;

.field private mViewBlurCanvas:Landroid/graphics/Canvas;

.field private mViewBlurred:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlur:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    const/16 v0, 0x19

    .line 43
    iput v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRadius:I

    const/16 v0, 0x8

    .line 44
    iput v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScaleFactor:I

    const-string v0, "#F7F7F7"

    .line 45
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mEraseColor:I

    .line 86
    new-instance v0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur$1;-><init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 61
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    return-object p0
.end method

.method private blur()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mInput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutput:Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 199
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mInput:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutput:Landroid/renderscript/Allocation;

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static copyBitmapFromBuffer(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 369
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 370
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 371
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 372
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 375
    :try_start_1
    sget-object v2, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    const-string v3, "copy src form buffer fail!"

    invoke-static {v2, v3, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :goto_2
    if-eqz p2, :cond_3

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    .line 381
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 383
    :cond_4
    throw p0
.end method

.method private getScrollRange()I
    .locals 4

    const/4 v0, 0x0

    .line 391
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "computeVerticalScrollRange"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 393
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 394
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 395
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 398
    sget-object v1, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    const-string v2, "reflect invoke computeVerticalScrollRange() fail!"

    invoke-static {v1, v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private initAllocation(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->recycleAllocation()V

    .line 66
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mInput:Landroid/renderscript/Allocation;

    .line 67
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutput:Landroid/renderscript/Allocation;

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private isRectIntersect()Z
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlur:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 262
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 263
    iget-boolean v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mIsClipToPadding:Z

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    .line 265
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    .line 264
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 269
    :goto_0
    sget-object v2, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RectBlurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", RectBlur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlur:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", RectIntersect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    .line 270
    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", paddingBottom: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isViewLocationChange(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 10

    .line 240
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 241
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 242
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 243
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 246
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 250
    iget-object v9, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    if-ne p1, v9, :cond_0

    iget-boolean v9, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mIsScrollView:Z

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->getScrollRange()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 251
    :goto_0
    iput v6, p2, Landroid/graphics/Rect;->left:I

    .line 252
    iput v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    .line 253
    iput v8, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    .line 254
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v6, :cond_1

    if-ne v1, v4, :cond_1

    if-ne v2, v8, :cond_1

    if-eq v3, p0, :cond_2

    :cond_1
    move v5, v7

    :cond_2
    return v5
.end method

.method private loadViewBlurBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .line 276
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlur:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlur:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->isViewLocationChange(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/blur/DynamicBlur;->isViewLocationChange(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v1

    .line 279
    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->isRectIntersect()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 280
    sget-object p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    const-string v0, "Hasn\'t intersect region between two views!"

    invoke-static {p0, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 285
    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    .line 286
    iget v7, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScaleFactor:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    int-to-float v7, v4

    mul-float/2addr v7, v6

    .line 287
    iget v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScaleFactor:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    if-lez v5, :cond_f

    if-gtz v7, :cond_1

    goto/16 :goto_4

    .line 292
    :cond_1
    iget-object v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectIntersect:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v11

    .line 293
    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    .line 294
    iget v10, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScaleFactor:I

    int-to-float v10, v10

    div-float v10, v6, v10

    .line 295
    sget-object v11, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "width: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", height: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", dx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", dy: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", ViewBlurredLocChange: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", ViewBlurLocChange: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", bitmapWidth: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", bitmapHeight: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->recycleViewBlurBg()V

    .line 302
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mIsScrollView:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 304
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    if-nez v1, :cond_5

    .line 305
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScaleFactor:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-nez v0, :cond_4

    return-object v3

    .line 310
    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    .line 311
    iget v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mEraseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 312
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 313
    invoke-virtual {v0, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move v0, v7

    .line 319
    :cond_5
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", blurred view height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlurred:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    neg-int v5, v9

    .line 322
    iget v6, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScaleFactor:I

    div-int/2addr v5, v6

    sub-int/2addr v1, v8

    .line 323
    div-int/2addr v1, v6

    .line 324
    div-int/2addr v2, v6

    .line 325
    div-int/2addr v4, v6

    if-ltz v5, :cond_b

    if-ltz v1, :cond_b

    if-lez v2, :cond_b

    if-gtz v4, :cond_6

    goto :goto_2

    :cond_6
    add-int v6, v5, v2

    .line 330
    iget-object v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v6, v8, :cond_a

    add-int v6, v1, v4

    iget-object v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v6, v8, :cond_7

    goto :goto_1

    .line 335
    :cond_7
    iget-object v6, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v5, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 336
    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    .line 337
    iput-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 339
    :cond_8
    invoke-static {v2, v1, v7}, Lcom/transsion/widgetslib/blur/DynamicBlur;->copyBitmapFromBuffer(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    move-result v1

    if-nez v1, :cond_9

    return-object v3

    :cond_9
    :goto_0
    if-eqz v0, :cond_e

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->initAllocation(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_a
    :goto_1
    const-string p0, "need dst bitmap dimen over source bitmap"

    .line 331
    invoke-static {v11, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_b
    :goto_2
    const-string p0, "pivot or dimen out source bitmap"

    .line 327
    invoke-static {v11, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 349
    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    .line 350
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    .line 351
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurCanvas:Landroid/graphics/Canvas;

    .line 352
    invoke-virtual {v0, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 353
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v9

    int-to-float v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->initAllocation(Landroid/graphics/Bitmap;)V

    .line 358
    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mEraseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 359
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 362
    :cond_e
    :goto_3
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    return-object p0

    :cond_f
    :goto_4
    return-object v3
.end method

.method private recycleAllocation()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mInput:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 165
    iput-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mInput:Landroid/renderscript/Allocation;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 170
    iput-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutput:Landroid/renderscript/Allocation;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    :cond_2
    iput-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private recycleViewBlurBg()V
    .locals 3

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBg:Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    sget-object v1, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    const-string v2, "recycleViewBlurBg, ViewBlurBitmap"

    invoke-static {v1, v2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 152
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    sget-object v1, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    const-string v2, "recycleViewBlurBg, ScrollViewBitmap"

    invoke-static {v1, v2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_2
    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollViewBitmap:Landroid/graphics/Bitmap;

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->recycleAllocation()V

    return-void
.end method

.method private updateBlurViewBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBg:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlur:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBg:Landroid/graphics/drawable/BitmapDrawable;

    .line 228
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlur:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    sget-object p1, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBlurViewBackground, 11111: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurBg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlur:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    sget-object p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    const-string p1, "updateBlurViewBackground, 22222"

    invoke-static {p0, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setBlurView(Landroid/view/View;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlurView, viewBlur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlur:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlur:Landroid/view/View;

    .line 83
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRectBlur:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBlurredView(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->stopBlurred()V

    .line 107
    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    .line 108
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mIsScrollView:Z

    .line 110
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mIsClipToPadding:Z

    .line 111
    sget-object v0, Lcom/transsion/widgetslib/blur/DynamicBlur;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlurredView, blurredView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", clipToPadding: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mIsClipToPadding:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", paddingBottom: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez p1, :cond_4

    .line 114
    new-instance p1, Lcom/transsion/widgetslib/blur/DynamicBlur$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur$2;-><init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 122
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 124
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez p1, :cond_5

    .line 128
    new-instance p1, Lcom/transsion/widgetslib/blur/DynamicBlur$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur$3;-><init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 136
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_5
    return-void
.end method

.method public setCallback(Lcom/transsion/widgetslib/blur/DynamicBlur$Callback;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mCallback:Lcom/transsion/widgetslib/blur/DynamicBlur$Callback;

    return-void
.end method

.method public setEraseColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 430
    iput p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mEraseColor:I

    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    .line 421
    iput p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRadius:I

    :cond_0
    return-void
.end method

.method public setScaleFactor(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 410
    iput p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScaleFactor:I

    :cond_0
    return-void
.end method

.method public stopBlurred()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 187
    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->recycleViewBlurBg()V

    return-void
.end method

.method public updateBlurViewBackground()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlur:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->loadViewBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->blur()V

    .line 219
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->updateBlurViewBackground(Landroid/graphics/Bitmap;)V

    return-void

    .line 212
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mCallback:Lcom/transsion/widgetslib/blur/DynamicBlur$Callback;

    if-eqz v0, :cond_3

    .line 213
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->mViewBlurred:Landroid/view/View;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur$Callback;->onBlurResult(Landroid/view/View;Z)V

    :cond_3
    :goto_1
    return-void
.end method
