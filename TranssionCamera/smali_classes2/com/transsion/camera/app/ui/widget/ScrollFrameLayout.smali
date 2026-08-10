.class public Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollFrameLayout.java"


# instance fields
.field private mHandleEvent:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

.field private mScrolling:Z

.field private final mTriggerThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07076a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mTriggerThreshold:I

    return-void
.end method

.method private down(FF)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IScroll;->down(FF)V

    :cond_0
    return-void
.end method

.method private reachedScrollThreshold(FF)Z
    .locals 1

    .line 157
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionX:F

    sub-float/2addr p1, v0

    .line 158
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionY:F

    sub-float/2addr p2, v0

    .line 159
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mTriggerThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mTriggerThreshold:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private scroll(FF)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IScroll;->scroll(FF)V

    :cond_0
    return-void
.end method

.method private startScroll()V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IScroll;->startScroll()V

    :cond_0
    return-void
.end method

.method private stopScroll()V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IScroll;->stopScroll()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 78
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IScroll;->isEnable()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 83
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->reachedScrollThreshold(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-nez v0, :cond_5

    .line 84
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->startScroll()V

    return v2

    .line 97
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 100
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-eqz v0, :cond_5

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->stopScroll()V

    .line 102
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    goto :goto_0

    .line 71
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 72
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionX:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionY:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->down(FF)V

    .line 106
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 121
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->reachedScrollThreshold(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-nez v3, :cond_3

    .line 127
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->startScroll()V

    .line 130
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-eqz v2, :cond_4

    .line 131
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    sub-float/2addr v3, v1

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->scroll(FF)V

    .line 133
    :cond_4
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 134
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    goto :goto_0

    .line 144
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-eqz v0, :cond_7

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->stopScroll()V

    .line 149
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    goto :goto_0

    .line 114
    :cond_6
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 115
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionX:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionY:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->down(FF)V

    .line 153
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    return-void
.end method
