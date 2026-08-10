.class Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;
.super Ljava/lang/Object;
.source "TopBarContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$000(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "The top bar is already updated"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout] mAvailableWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$200(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAvailableHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$300(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$400(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$200(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$300(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->access$002(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method
