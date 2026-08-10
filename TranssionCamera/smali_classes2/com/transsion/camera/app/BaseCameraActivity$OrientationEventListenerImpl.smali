.class Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "BaseCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Context;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    .line 962
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1100(Lcom/transsion/camera/app/BaseCameraActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1200(II)I

    move-result p1

    .line 975
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->correctOrientation(I)I

    move-result p1

    .line 976
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1100(Lcom/transsion/camera/app/BaseCameraActivity;)I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1102(Lcom/transsion/camera/app/BaseCameraActivity;I)I

    .line 978
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1300(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1300(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    .line 980
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1100(Lcom/transsion/camera/app/BaseCameraActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    .line 982
    :cond_1
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
