.class Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;-><init>(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$702(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    neg-float p1, p3

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$800(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$900(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)I

    move-result v0

    int-to-float v0, v0

    div-float v0, p4, v0

    float-to-double v0, v0

    .line 106
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;->onScroll(DD)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$702(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Z)Z

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$1000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F

    move-result-object p1

    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    sub-float/2addr v1, v3

    aput v1, p1, v0

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$1000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F

    move-result-object p1

    aget v1, p1, p2

    div-float v2, p4, v2

    add-float/2addr v1, v2

    aput v1, p1, p2

    .line 112
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$1100(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F

    move-result-object v1

    const/high16 v2, 0x43fa0000    # 500.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    neg-float v4, p3

    div-float/2addr v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    aput v4, v1, v0

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$1100(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F

    move-result-object v1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    div-float p1, p4, v2

    :goto_2
    aput p1, v1, p2

    .line 115
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distanceX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$1000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",distanceY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$1000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)[F

    move-result-object p0

    aget p0, p0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    cmpl-float p0, p3, v3

    if-nez p0, :cond_5

    cmpl-float p0, p4, v3

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move p2, v0

    :cond_5
    :goto_3
    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$500(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;->onSingleTapUp(FF)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queuedSingleTaps length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper$GestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->access$500(Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
