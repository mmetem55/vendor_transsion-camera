.class public Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraModeSelectorListener.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final degreeLimit:I = 0x1e

.field private static final distanceLimit:I = 0xf


# instance fields
.field private isScroll:Z

.field private mBubbleInfo:Landroid/widget/TextView;

.field private mBubbleInfoInStorage:Z

.field private mBubbleTriangle:Landroid/widget/ImageView;

.field private mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

.field private mItem:I

.field private mRecordButtonView:Lcom/transsion/ardrawlines/view/RecordButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/ardrawlines/view/CameraModelSelectView;Lcom/transsion/ardrawlines/view/RecordButton;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isScroll:Z

    .line 23
    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mItem:I

    .line 27
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    .line 28
    iput-object p2, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mRecordButtonView:Lcom/transsion/ardrawlines/view/RecordButton;

    .line 29
    iput-object p3, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleInfo:Landroid/widget/TextView;

    .line 30
    iput-object p4, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleTriangle:Landroid/widget/ImageView;

    return-void
.end method

.method private isInStorage()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleInfoInStorage:Z

    return p0
.end method

.method private isTouchPointInView(Landroid/view/View;II)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 135
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p3, p3, p0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    if-lt p2, p3, :cond_1

    if-gt p2, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private setBubbleInfoVisibility(I)V
    .locals 3

    .line 80
    sget-object v0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetViewAlongWithCameraModeChanges...: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isInStorage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isInStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleInfo:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleTriangle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleTriangle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private touchItem(II)I
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 114
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 115
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 118
    iget-object v3, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isScroll:Z

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 53
    iget-boolean p3, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isScroll:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    return p4

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    const/high16 p1, 0x41700000    # 15.0f

    cmpl-float p1, p2, p1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/4 p3, 0x1

    if-lez p1, :cond_2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    .line 57
    sget-object p1, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->TAG:Ljava/lang/String;

    const-string p2, "scroll to right"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-boolean p3, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isScroll:Z

    .line 59
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, p3, :cond_1

    .line 60
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scrollLeft()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scrollRight()V

    goto :goto_0

    :cond_2
    const/high16 p1, -0x3e900000    # -15.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_4

    .line 65
    sget-object p1, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->TAG:Ljava/lang/String;

    const-string p2, "scroll to left"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-boolean p3, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->isScroll:Z

    .line 67
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, p3, :cond_3

    .line 68
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scrollRight()V

    goto :goto_0

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scrollLeft()V

    .line 73
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mRecordButtonView:Lcom/transsion/ardrawlines/view/RecordButton;

    iget-object p2, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p2}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->getCurrentItem()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/ardrawlines/view/RecordButton;->setCameraMode(I)V

    .line 74
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->setBubbleInfoVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mItem:I

    return p4
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->touchItem(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v1, v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scrollToItem(I)V

    .line 44
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mRecordButtonView:Lcom/transsion/ardrawlines/view/RecordButton;

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/view/RecordButton;->setCameraMode(I)V

    .line 45
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->setBubbleInfoVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mCameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mItem:I

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public sendCurrentItem()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mItem:I

    return p0
.end method

.method public setStorageStatus(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/CameraModeSelectorListener;->mBubbleInfoInStorage:Z

    return-void
.end method
