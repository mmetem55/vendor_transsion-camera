.class public final synthetic Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/SecureCameraActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/SecureCameraActivity;->$r8$lambda$3AP2O3wiSjdgwdlnxhfT88kvdTg(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V

    return-void
.end method
