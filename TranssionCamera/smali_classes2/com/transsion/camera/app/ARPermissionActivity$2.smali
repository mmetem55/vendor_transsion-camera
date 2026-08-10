.class Lcom/transsion/camera/app/ARPermissionActivity$2;
.super Ljava/lang/Object;
.source "ARPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ARPermissionActivity;->showLocationPermissionsRequest()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ARPermissionActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ARPermissionActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/ARPermissionActivity$2;->this$0:Lcom/transsion/camera/app/ARPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 102
    iget-object p2, p0, Lcom/transsion/camera/app/ARPermissionActivity$2;->this$0:Lcom/transsion/camera/app/ARPermissionActivity;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ARPermissionActivity;->canShowPermissionsDialog()Z

    move-result p2

    if-nez p2, :cond_0

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/app/ARPermissionActivity$2;->this$0:Lcom/transsion/camera/app/ARPermissionActivity;

    const-string v0, "keyguard"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ARPermissionActivity$2;->this$0:Lcom/transsion/camera/app/ARPermissionActivity;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ARPermissionActivity$2;->this$0:Lcom/transsion/camera/app/ARPermissionActivity;

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p0, p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->gotoAppPermissionDetails(Landroid/content/Context;ZLjava/lang/String;)V

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
