.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;
.super Ljava/lang/Object;
.source "MoreLinearListAdapter.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinearListItemDragEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$1;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    .line 350
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->access$502(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;I)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 357
    :cond_1
    instance-of p2, p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-eqz p2, :cond_2

    .line 358
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->access$600(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 359
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->access$600(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;

    move-result-object p2

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->access$700(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;->onDragEnter(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    :cond_2
    :goto_0
    return v0
.end method
