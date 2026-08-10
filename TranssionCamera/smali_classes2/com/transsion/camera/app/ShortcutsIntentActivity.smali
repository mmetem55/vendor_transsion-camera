.class public Lcom/transsion/camera/app/ShortcutsIntentActivity;
.super Landroid/app/Activity;
.source "ShortcutsIntentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private logLifecycle(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "START"

    goto :goto_0

    :cond_0
    const-string p2, "END"

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CamAp_ShortcutsIntentActivity"

    .line 69
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onCreate"

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0199

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const-string v0, "onResume"

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.extras.IS_SHORTCUT"

    .line 41
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.shortcut.conversation"

    .line 42
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "selfie"

    .line 43
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 44
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "onStop"

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ShortcutsIntentActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method
