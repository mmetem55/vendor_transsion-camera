.class Lcom/transsion/ardrawlines/permission/PermissionManager$3;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/permission/PermissionManager;->showRequiredManageStoragePermissionSystemDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 450
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
