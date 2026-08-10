.class Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;
.super Ljava/lang/Object;
.source "SurfaceViewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/SurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceHolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Lcom/transsion/camera/app/ui/preview/SurfaceViewController$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 125
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$402(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)Z

    .line 126
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p2

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p2

    if-ne p2, p4, :cond_0

    .line 127
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object p4, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p4

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, p4, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$200(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$300(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p0

    invoke-interface {v0, v1, p1, v2, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$402(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)Z

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$502(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)Z

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
