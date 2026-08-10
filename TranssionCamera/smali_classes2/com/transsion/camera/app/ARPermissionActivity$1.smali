.class Lcom/transsion/camera/app/ARPermissionActivity$1;
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

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ARPermissionActivity$1;->this$0:Lcom/transsion/camera/app/ARPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
