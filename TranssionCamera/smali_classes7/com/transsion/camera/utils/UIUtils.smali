.class public Lcom/transsion/camera/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public static dp2Px(Landroid/content/res/Resources;F)F
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public static dp2Px(Landroid/content/res/Resources;I)I
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static formatTime(JZ)Ljava/lang/String;
    .locals 7

    long-to-int v0, p0

    .line 33
    div-int/lit16 v0, v0, 0x3e8

    const-wide/16 v1, 0x3e8

    .line 34
    rem-long/2addr p0, v1

    long-to-int p0, p0

    .line 35
    rem-int/lit8 p1, v0, 0x3c

    .line 36
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 37
    div-int/lit16 v0, v0, 0xe10

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p2, :cond_0

    .line 40
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    div-int/lit8 p0, p0, 0xa

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v5

    const-string p0, "%02d:%02d:%02d.%02d"

    .line 40
    invoke-static {p2, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 43
    :cond_0
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static hideSystemUI(Landroid/app/Activity;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1307

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static showSystemUI(Landroid/app/Activity;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
