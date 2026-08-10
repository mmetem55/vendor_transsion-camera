.class public Lcom/transsion/ardrawlines/share/ShareMedia;
.super Ljava/lang/Object;
.source "ShareMedia.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareMedia"

.field private static final VSKIT_LAUNCH_NAME:Ljava/lang/String; = "com.yomobigroup.chat.ui.activity.LaunchActivity"

.field private static final VSKIT_PACKAGE_NAME:Ljava/lang/String; = "com.yomobigroup.chat"


# instance fields
.field private FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

.field private mIShareApplicationListener:Lcom/transsion/ardrawlines/share/IShareApplicationListener;

.field private final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->owner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public setIShareApplicationListener(Lcom/transsion/ardrawlines/share/IShareApplicationListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->mIShareApplicationListener:Lcom/transsion/ardrawlines/share/IShareApplicationListener;

    return-void
.end method

.method public shareMediaFile(Ljava/io/File;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->FILE_PROVIDER_AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p2, "image/*"

    .line 49
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p2, "video/*"

    .line 51
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p2, "android.intent.extra.TEXT"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/transsion/ardrawlines/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    .line 54
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 55
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    iget-object p1, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/ardrawlines/share/ShareMedia;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget p2, Lcom/transsion/ardrawlines/R$string;->share_with:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
