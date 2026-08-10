.class Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;
.super Ljava/lang/Object;
.source "MoreView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V
    .locals 0

    .line 911
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 915
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 916
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 922
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$600(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 923
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$500(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F

    move-result v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, p2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 924
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$700(Lcom/transsion/camera/app/ui/mode/more/MoreView;I)Z

    goto :goto_0

    .line 918
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$502(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)F

    :cond_2
    :goto_0
    return v0
.end method
