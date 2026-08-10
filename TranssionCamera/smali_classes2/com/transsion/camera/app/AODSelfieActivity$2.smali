.class Lcom/transsion/camera/app/AODSelfieActivity$2;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "AODSelfieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/AODSelfieActivity;->requestDismissKeyguardIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/AODSelfieActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/AODSelfieActivity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/app/AODSelfieActivity$2;->this$0:Lcom/transsion/camera/app/AODSelfieActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    .line 214
    invoke-static {}, Lcom/transsion/camera/app/AODSelfieActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "requestDismissKeyguard onDismissCancelled"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDismissError()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    .line 202
    invoke-static {}, Lcom/transsion/camera/app/AODSelfieActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "requestDismissKeyguard onDismissError"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDismissSucceeded()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    .line 208
    invoke-static {}, Lcom/transsion/camera/app/AODSelfieActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "requestDismissKeyguard onDismissSucceeded"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
