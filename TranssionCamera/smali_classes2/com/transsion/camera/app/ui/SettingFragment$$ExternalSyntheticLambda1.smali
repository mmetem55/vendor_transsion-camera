.class public final synthetic Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference$OnCheckChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCheckChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/SettingFragment;->$r8$lambda$Et4XYmb7ewiKsXiEqQ3UF3EzQGg(Lcom/transsion/camera/app/ui/shortcut/ShortcutItem;Landroid/view/View;Z)V

    return-void
.end method
