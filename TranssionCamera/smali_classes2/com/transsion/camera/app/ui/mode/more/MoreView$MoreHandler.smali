.class Lcom/transsion/camera/app/ui/mode/more/MoreView$MoreHandler;
.super Landroid/os/Handler;
.source "MoreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoreHandler"
.end annotation


# instance fields
.field mMoreViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/mode/more/MoreView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 1

    .line 462
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 463
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$MoreHandler;->mMoreViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V
    .locals 0

    .line 459
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$MoreHandler;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 468
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$MoreHandler;->mMoreViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;

    .line 470
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 471
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    move-result-object p1

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setSwapItemRect(I)V

    :cond_0
    return-void
.end method
