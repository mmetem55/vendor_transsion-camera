.class public final Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;
.super Ljava/lang/Object;
.source "TapHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;,
        Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;
    }
.end annotation


# static fields
.field private static final SCROLLING_DELTA_FACTOR:F = 500.0f

.field private static final SCROLLING_FACTOR:F = 2.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile curScale:F

.field private volatile isScaling:Z

.field private volatile isScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFator:F

.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field private final mScrollArray:[F

.field private final mScrollDeltaArray:[F

.field private volatile preScale:F

.field private final queuedSingleTaps:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TapHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->preScale:F

    .line 44
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->queuedSingleTaps:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 47
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScrollArray:[F

    new-array v0, v0, [F

    .line 48
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScrollDeltaArray:[F

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScaleFator:F

    .line 121
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;-><init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 122
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$ScaleListener;-><init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 124
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/utils/ContextUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScreenWidth:I

    .line 126
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScreenHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mGestureListener:Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScrollArray:[F

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScaleFator:F

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScrollDeltaArray:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->curScale:F

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->curScale:F

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->preScale:F

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->preScale:F

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScaling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->queuedSingleTaps:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScrolling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScreenHeight:I

    return p0
.end method


# virtual methods
.method public getCurScale()F
    .locals 0

    .line 147
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->curScale:F

    return p0
.end method

.method public getScrollArray()[F
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScrollArray:[F

    return-object p0
.end method

.method public getScrollingDelta()[F
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScrollDeltaArray:[F

    return-object p0
.end method

.method public isScaling()Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScaling:Z

    return p0
.end method

.method public isScrolling()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScrolling:Z

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 161
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScaling:Z

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScrolling:Z

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mScrollDeltaArray:[F

    const/4 v0, 0x0

    aput v0, p0, p1

    .line 169
    aput v0, p0, p2

    :cond_1
    return p2
.end method

.method public poll()Landroid/view/MotionEvent;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->queuedSingleTaps:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MotionEvent;

    return-object p0
.end method

.method public setGestureListener(Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->mGestureListener:Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    return-void
.end method
