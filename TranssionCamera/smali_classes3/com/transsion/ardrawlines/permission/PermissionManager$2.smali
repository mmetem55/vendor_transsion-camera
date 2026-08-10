.class Lcom/transsion/ardrawlines/permission/PermissionManager$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/permission/PermissionManager;->showRequiredPermissionsSystemDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/transsion/ardrawlines/permission/PermissionManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    iget-object p0, p0, Lcom/transsion/ardrawlines/permission/PermissionManager$2;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->launchPermissionDetailsSettings(Landroid/content/Context;)V

    return-void
.end method
