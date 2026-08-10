.class public Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;
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
    name = "GridAreaDragEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V
    .locals 0

    .line 1453
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    .line 1459
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1464
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    :cond_1
    return p2
.end method
