.class public abstract Lcom/transsion/camera/app/ui/AbstractThumbnailUI;
.super Ljava/lang/Object;
.source "AbstractThumbnailUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IThumbnailUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final COLUMN_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field protected mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsUpdateThumbnail:Z

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mPreviousThumbnailView:Landroid/widget/ImageView;

.field private mScreenFormType:I

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mThumbnailBg:Landroid/view/View;

.field private mThumbnailIn:Landroid/animation/ObjectAnimator;

.field private mThumbnailOut:Landroid/animation/ObjectAnimator;

.field private mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field protected mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$EP615rM1jX89hv9uk70tZu1TnGA(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YRN8bpqOWk2tVg50NXv84qYKQJU(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->lambda$wrapDrawable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yfs_yncZhHD3NBwjGGbf9GIR8m0(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->wrapDrawable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->COLUMN_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mScreenFormType:I

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 67
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 68
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mScreenFormType:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateLayoutParams(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->wrapDrawable()V

    return-void
.end method

.method static synthetic access$902(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIsUpdateThumbnail:Z

    return p1
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->ringScreenLightUpdateUI()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$wrapDrawable$1()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    const v0, 0x7f0808fe

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    const v0, 0x7f0808fd

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailOut:Landroid/animation/ObjectAnimator;

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailIn:Landroid/animation/ObjectAnimator;

    .line 187
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->COLUMN_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateLayoutParams(II)V
    .locals 8

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 315
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070727

    .line 318
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x800013

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    if-ne p2, v3, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    const/16 p1, 0x51

    .line 333
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 328
    :cond_1
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x31

    .line 325
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    const p1, 0x800015

    .line 322
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 336
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_4
    if-eqz p2, :cond_9

    const/4 v3, 0x2

    if-eq p2, v3, :cond_9

    const/4 v3, 0x3

    if-ne p2, v3, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    .line 343
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f070066

    .line 345
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 346
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 347
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 353
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 354
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v0, 0x7f070067

    if-eq p1, v7, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    const/16 p1, 0x53

    .line 375
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 376
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 377
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_6
    const/16 p1, 0x33

    .line 368
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 369
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 370
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_7
    const/16 p1, 0x35

    .line 363
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 365
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_8
    const/16 p1, 0x55

    .line 358
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 359
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 360
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 380
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 339
    :cond_9
    :goto_2
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private wrapDrawable()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public aodAnimation()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 274
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    .line 275
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [F

    .line 276
    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 278
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 279
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getThumbnailRootTop()I
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p0, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected hideThumbnailBg()V
    .locals 1

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 213
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c019d

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09038b

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    const p2, 0x7f0900be

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    const p2, 0x7f090502

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    const p2, 0x7f09042b

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 78
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method public isUpdateThumbnail()Z
    .locals 2

    .line 295
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mScreenFormType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 296
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIsUpdateThumbnail:Z

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 5

    .line 133
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_1

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_3

    .line 135
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p0, :cond_2

    .line 136
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_8

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_6

    .line 145
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    if-ne p2, p1, :cond_5

    move p2, v2

    goto :goto_1

    :cond_5
    move p2, v1

    .line 146
    :goto_1
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateLayoutParams(II)V

    goto :goto_3

    .line 149
    :cond_6
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    if-eqz p2, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->startAnimation()V

    goto :goto_3

    .line 153
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateLayoutParams(II)V

    goto :goto_3

    .line 143
    :cond_8
    :goto_2
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    move p2, v2

    .line 157
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p0, :cond_9

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :cond_9
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mScreenFormType:I

    .line 165
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateLayoutParams(II)V

    return-void
.end method

.method protected releaseResource()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 303
    invoke-static {v0}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 306
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setupViews()V
    .locals 4

    .line 98
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mScreenFormType:I

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateLayoutParams(II)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->wrapDrawable()V

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->hideThumbnailBg()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] updateThumbnailView CachedBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 127
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->releaseResource()V

    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    .line 232
    :cond_1
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
