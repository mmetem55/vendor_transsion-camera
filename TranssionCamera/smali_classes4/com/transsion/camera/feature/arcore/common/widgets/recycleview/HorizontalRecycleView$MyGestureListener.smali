.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 387
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$002(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Z)Z

    .line 396
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setRecordingState(Z)V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterLongClick()V

    goto/16 :goto_1

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 406
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 407
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    .line 408
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mSelectedPosition is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v4}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->notifyLongPressState(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1500(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 362
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onSingleTapConfirmed view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 366
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_2

    .line 368
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapConfirmed position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onSingleTapConfirmed , RecycleView is in editing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    .line 377
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)I

    move-result v1

    if-eq v1, p1, :cond_4

    .line 378
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1602(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Z)Z

    .line 380
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterClick(Z)V

    .line 349
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
