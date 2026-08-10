.class public Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;
.super Ljava/lang/Object;
.source "MoreView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1081
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    .line 1082
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1083
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    .line 1084
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1113
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    return p4

    .line 1116
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-le p3, v0, :cond_1

    goto/16 :goto_0

    .line 1119
    :cond_1
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 1120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1121
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1122
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1400(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1500(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1125
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    cmpg-float p3, v2, p3

    if-ltz p3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    int-to-float v1, v1

    cmpl-float p3, p3, v1

    if-lez p3, :cond_3

    goto :goto_0

    .line 1128
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    const-string v1, "onScroll is running"

    invoke-static {p3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1129
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f070684

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 1130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 1132
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    cmpl-float p1, v1, p3

    if-lez p1, :cond_5

    .line 1133
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1700(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1134
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1700(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;->onMorePanelScroll()V

    .line 1135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1800(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    :cond_4
    return v0

    :cond_5
    :goto_0
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
