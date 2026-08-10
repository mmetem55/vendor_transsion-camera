.class public Lcom/transsion/ardrawlines/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "ARDrawLines_Record_Info"

.field private static final VALUE_NAME:Ljava/lang/String; = "isInfoPresented"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWelcomeGuideBoolean(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "ARDrawLines_Record_Info"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isInfoPresented"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putWelcomeGuideBoolean(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "ARDrawLines_Record_Info"

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "isInfoPresented"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
