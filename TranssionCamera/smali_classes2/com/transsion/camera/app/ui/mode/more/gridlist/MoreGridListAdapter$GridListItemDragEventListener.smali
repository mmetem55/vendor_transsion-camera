.class public Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;
.super Ljava/lang/Object;
.source "MoreGridListAdapter.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridListItemDragEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    .line 393
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1602(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 400
    :cond_1
    instance-of p2, p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-eqz p2, :cond_2

    .line 401
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1700(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 402
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1700(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;

    move-result-object p2

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1600(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;->onDragEnter(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    :cond_2
    :goto_0
    return v0
.end method
