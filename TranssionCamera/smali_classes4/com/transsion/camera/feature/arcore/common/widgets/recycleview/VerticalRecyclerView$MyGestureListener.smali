.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .line 376
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$002(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Z)Z

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/SpringRecyclerView;->setRecordingState(Z)V

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterLongClick()V

    goto/16 :goto_2

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 392
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 393
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4

    .line 395
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mSelectedPosition is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v5}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;->getData(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 398
    :cond_2
    instance-of v4, v3, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-nez v4, :cond_3

    goto :goto_1

    .line 399
    :cond_3
    check-cast v3, Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 400
    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isUserCustomAvatar()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->notifyLongPressState(Landroid/view/View;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1500(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 351
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onSingleTapConfirmed view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_2

    .line 357
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onSingleTapConfirmed , RecycleView is in editing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result v1

    if-eq v1, p1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1602(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Z)Z

    .line 369
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$MyGestureListener;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$1300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterClick(Z)V

    .line 338
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
