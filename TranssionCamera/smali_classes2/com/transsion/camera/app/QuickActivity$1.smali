.class Lcom/transsion/camera/app/QuickActivity$1;
.super Ljava/lang/Object;
.source "QuickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/QuickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/QuickActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/QuickActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/QuickActivity;->access$000(Lcom/transsion/camera/app/QuickActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "delayed Runnable --> onResumeTasks()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/QuickActivity;->access$002(Lcom/transsion/camera/app/QuickActivity;Z)Z

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity$1;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionResumeTasks()V

    :cond_0
    return-void
.end method
