.class Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;
.super Ljava/lang/Object;
.source "AODModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODModeScrollUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeView"
.end annotation


# instance fields
.field private final mMargin:I

.field private final mRoot:Landroid/view/View;

.field private final mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    .line 381
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 382
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mTitle:Landroid/widget/TextView;

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703d2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mMargin:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/TextView;Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->show(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->hide()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createRightEnterAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createLeftEnterAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createTopEnterAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createBottomEnterAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;I)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->setOrientation(I)V

    return-void
.end method

.method private createBottomEnterAnimator()Landroid/animation/Animator;
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data
.end method

.method private createFadeInAnimator()Landroid/animation/Animator;
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createFadeOutAnimator()Landroid/animation/Animator;
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/16 v2, 0x64

    const-string v3, "alpha"

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createLeftEnterAnimator()Landroid/animation/Animator;
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;
    .locals 0

    .line 427
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 428
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private varargs createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;
    .locals 0

    .line 433
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 434
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private createRightEnterAnimator()Landroid/animation/Animator;
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data
.end method

.method private createTopEnterAnimator()Landroid/animation/Animator;
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data
.end method

.method private hide()V
    .locals 1

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setOrientation(I)V
    .locals 1

    .line 397
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->updateLayout(I)V

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    return-void
.end method

.method private show(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private updateLayout(I)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 403
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    const/16 p1, 0x31

    .line 420
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 421
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    .line 414
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 415
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x51

    .line 410
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 411
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x13

    .line 406
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 407
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 423
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
