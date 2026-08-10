.class public Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$DragMoveListener;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$ScaleListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;
    }
.end annotation


# instance fields
.field private ACTION_STATE_DRAG:I

.field private ACTION_STATE_IDLE:I

.field private mActionState:I

.field private mDownUpDetector:Lcom/transsion/camera/app/ui/gesture/UpDetector;

.field private mDx:F

.field private mDy:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialTouchEvent:Landroid/view/MotionEvent;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

.field private mNeedDoubleTap:Z

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;Z)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_IDLE:I

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_DRAG:I

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    .line 47
    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    .line 48
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mNeedDoubleTap:Z

    .line 49
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v2, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$1;)V

    invoke-direct {p2, p1, v2, v3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p3, :cond_0

    .line 51
    new-instance p3, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;

    invoke-direct {p3, p0, v3}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$1;)V

    invoke-virtual {p2, p3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 53
    :cond_0
    new-instance p2, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;

    new-instance p3, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$ScaleListenerImpl;

    invoke-direct {p3, p0, v3}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$ScaleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$1;)V

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 55
    new-instance p1, Lcom/transsion/camera/app/ui/gesture/UpDetector;

    new-instance p2, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;

    invoke-direct {p2, p0, v3}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$1;)V

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/gesture/UpDetector;-><init>(Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDownUpDetector:Lcom/transsion/camera/app/ui/gesture/UpDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->select(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mNeedDoubleTap:Z

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mInitialTouchEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$702(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDx:F

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDy:F

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_DRAG:I

    return p0
.end method

.method private select(I)V
    .locals 1

    .line 207
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 210
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDownUpDetector:Lcom/transsion/camera/app/ui/gesture/UpDetector;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/gesture/UpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mActionState:I

    iget v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_DRAG:I

    if-ne v0, v1, :cond_3

    .line 72
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDx:F

    .line 73
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDy:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchX:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchY:F

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mListener:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mInitialTouchEvent:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDx:F

    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mDy:F

    invoke-interface {v0, v1, p1, v2, p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$DragMoveListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 81
    :cond_1
    iget p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->ACTION_STATE_IDLE:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->select(I)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchX:F

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->mLastTouchY:F

    :cond_3
    :goto_0
    return-void
.end method
