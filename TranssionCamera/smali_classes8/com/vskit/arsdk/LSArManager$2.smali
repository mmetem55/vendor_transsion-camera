.class Lcom/vskit/arsdk/LSArManager$2;
.super Ljava/lang/Object;
.source "LSArManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vskit/arsdk/LSArManager;->onCameraChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vskit/arsdk/LSArManager;


# direct methods
.method constructor <init>(Lcom/vskit/arsdk/LSArManager;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager$2;->this$0:Lcom/vskit/arsdk/LSArManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager$2;->this$0:Lcom/vskit/arsdk/LSArManager;

    invoke-static {v0}, Lcom/vskit/arsdk/LSArManager;->access$200(Lcom/vskit/arsdk/LSArManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager$2;->this$0:Lcom/vskit/arsdk/LSArManager;

    invoke-static {v1}, Lcom/vskit/arsdk/LSArManager;->access$000(Lcom/vskit/arsdk/LSArManager;)I

    move-result v1

    if-lez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager$2;->this$0:Lcom/vskit/arsdk/LSArManager;

    invoke-static {v1}, Lcom/vskit/arsdk/LSArManager;->access$000(Lcom/vskit/arsdk/LSArManager;)I

    move-result v1

    invoke-static {v1}, Lcom/vskit/arsdk/utils/OpenGLUtil;->deleteTexture(I)V

    .line 450
    :cond_0
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager$2;->this$0:Lcom/vskit/arsdk/LSArManager;

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lcom/vskit/arsdk/LSArManager;->access$002(Lcom/vskit/arsdk/LSArManager;I)I

    .line 451
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
