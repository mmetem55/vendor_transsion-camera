.class public Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;
.super Ljava/lang/Object;
.source "MoreView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinearViewDragEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V
    .locals 0

    .line 1470
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    .line 1476
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1481
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1482
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setLinearMode()V

    .line 1483
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2400(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    .line 1485
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1486
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$600(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2500(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->handleLinearViewDragEnterEvent(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_2
    return p2
.end method
