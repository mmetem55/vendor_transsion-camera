.class Lcom/transsion/camera/app/QuickActivity$2;
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

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/app/QuickActivity$2;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 134
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "delayed Runnable --> onStopTasks()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity$2;->this$0:Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStopTasks()V

    return-void
.end method
