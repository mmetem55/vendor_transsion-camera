.class public Lcom/transsion/camera/ui/setting/CodeResultActivity;
.super Landroid/app/Activity;
.source "CodeResultActivity.java"


# instance fields
.field private mBackCamera:Landroid/widget/ImageView;

.field private mQrCodeResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatterQrCode(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "MT:[A-Z0-9.-]{19,}"

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "#121212"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const v0, 0x7f0c0057

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "#FFFAFAFA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0c00d6

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    const v0, 0x7f0903a7

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/CodeResultActivity;->mQrCodeResult:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const v0, 0x7f09009d

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/CodeResultActivity;->mBackCamera:Landroid/widget/ImageView;

    .line 50
    new-instance v1, Lcom/transsion/camera/ui/setting/CodeResultActivity$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/CodeResultActivity$1;-><init>(Lcom/transsion/camera/ui/setting/CodeResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "qrCodeResult"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "https://"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x9

    const-string v4, "android.intent.action.VIEW"

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 66
    aget-object v2, v1, v2

    const-string v5, "smsto"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "sms_body"

    const/4 v2, 0x2

    .line 69
    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/CodeResultActivity;->isMatterQrCode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    const/16 p1, 0x3b

    const/16 v1, 0xa

    .line 80
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/CodeResultActivity;->mQrCodeResult:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 61
    :cond_4
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
