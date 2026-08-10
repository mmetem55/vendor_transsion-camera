.class Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;
.super Ljava/lang/Object;
.source "AODExitUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODExitUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragGestureDetector"
.end annotation


# instance fields
.field private mDragging:Z

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AODExitUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI;Lcom/transsion/camera/app/ui/AODExitUI$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;-><init>(Lcom/transsion/camera/app/ui/AODExitUI;)V

    return-void
.end method

.method private begin()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$700(Lcom/transsion/camera/app/ui/AODExitUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->mDragging:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->mDragging:Z

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$500(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$800(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    :cond_0
    return-void
.end method

.method private end(Z)V
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->mDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->mDragging:Z

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$500(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$900(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->end(Z)V

    return-void
.end method

.method public onDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v1, :cond_1

    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    return v0

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->begin()V

    .line 194
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->mDragging:Z

    if-eqz p1, :cond_2

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$500(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$600(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;FF)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public onUp()Z
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->end(Z)V

    return v0
.end method
