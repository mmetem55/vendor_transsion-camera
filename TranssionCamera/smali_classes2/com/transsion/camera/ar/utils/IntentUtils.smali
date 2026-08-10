.class public Lcom/transsion/camera/ar/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method private static copyIntentExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 26
    :cond_1
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_2

    .line 27
    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public static varargs copyIntentExtra(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 16
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 17
    invoke-static {p0, p1, v2}, Lcom/transsion/camera/ar/utils/IntentUtils;->copyIntentExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
