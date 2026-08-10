.class public Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
.super Ljava/lang/Object;
.source "StandRemoteHelper.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/secondaryhome/StandRemoteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelayIntentBuilder"
.end annotation


# static fields
.field private static final DATA:Ljava/lang/String; = "kolun://com.transsion.secondaryhome.unfold.relay"

.field public static final KEY_FROM_SOURCE:Ljava/lang/String; = "source"

.field public static final KEY_TARGET_ACTION:Ljava/lang/String; = "targetAction"

.field public static final KEY_TARGET_CATEGORIES:Ljava/lang/String; = "targetCategories"

.field public static final KEY_TARGET_CLASS:Ljava/lang/String; = "targetClass"

.field public static final KEY_TARGET_DEEPLINK:Ljava/lang/String; = "targetDeeplink"

.field public static final KEY_TARGET_FLAGS:Ljava/lang/String; = "targetFlags"

.field public static final KEY_TARGET_INTENT:Ljava/lang/String; = "targetIntent"

.field public static final KEY_TARGET_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field public static final KEY_TARGET_PKG:Ljava/lang/String; = "targetPackage"

.field public static final KEY_TARGET_TIP:Ljava/lang/String; = "tipText"


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mTargetAction:Ljava/lang/String;

.field private mTargetCategories:[Ljava/lang/String;

.field private mTargetClass:Ljava/lang/String;

.field private mTargetDeeplink:Ljava/lang/String;

.field private mTargetExtra:Landroid/os/Bundle;

.field private mTargetFlags:I

.field private mTargetIntent:Landroid/content/Intent;

.field private mTargetPackage:Ljava/lang/String;

.field private mTipText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 3

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "kolun://com.transsion.secondaryhome.unfold.relay"

    .line 225
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetPackage:Ljava/lang/String;

    const-string v2, "targetPackage"

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetClass:Ljava/lang/String;

    const-string v2, "targetClass"

    .line 227
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetAction:Ljava/lang/String;

    const-string v2, "targetAction"

    .line 228
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetCategories:[Ljava/lang/String;

    const-string v2, "targetCategories"

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetDeeplink:Ljava/lang/String;

    const-string v2, "targetDeeplink"

    .line 230
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetFlags:I

    const-string v2, "targetFlags"

    .line 231
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTipText:Ljava/lang/String;

    const-string v2, "tipText"

    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetExtra:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    const-string v2, "pendingIntent"

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    :cond_1
    iget-object p0, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetIntent:Landroid/content/Intent;

    if-eqz p0, :cond_2

    const-string v1, "targetIntent"

    .line 240
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public buildPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x29a

    const/high16 v1, 0xc000000

    .line 247
    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public setTargetAction(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetAction:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetCategories([Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetCategories:[Ljava/lang/String;

    return-object p0
.end method

.method public setTargetClass(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetData(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetDeeplink:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetDeeplink(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetDeeplink:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetExtra(Landroid/os/Bundle;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetExtra:Landroid/os/Bundle;

    return-object p0
.end method

.method public setTargetFlags(I)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 219
    iput p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetFlags:I

    return-object p0
.end method

.method public setTargetIntent(Landroid/content/Intent;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setTargetPackage(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetPendingIntent(Landroid/app/PendingIntent;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setTipText(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->mTipText:Ljava/lang/String;

    return-object p0
.end method
