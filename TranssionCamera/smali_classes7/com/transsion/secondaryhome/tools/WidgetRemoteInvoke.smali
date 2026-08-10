.class public Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;
.super Ljava/lang/Object;
.source "WidgetRemoteInvoke.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# static fields
.field private static final AOD_WIDGET_URL:Ljava/lang/String; = "content://com.transsion.secondaryhome.widgetProvider"

.field public static final CURRENT_ID_KEY:Ljava/lang/String; = "current_id_key"

.field public static final GET_REMOTE_WIDGET_STATE:Ljava/lang/String; = "get_remote_widget_state"

.field public static final GET_REMOTE_WIDGET_STATE_BY_ID:Ljava/lang/String; = "get_remote_widget_state_by_id"

.field public static final GET_REMOTE_WIDGET_VERSION:Ljava/lang/String; = "get_remote_widget_version"

.field public static final INVOKE_TRAN_REMOTE:Ljava/lang/String; = "invoke_tran_remote"

.field public static final PARENT_ID_KEY:Ljava/lang/String; = "parent_id_key"

.field private static final TAG:Ljava/lang/String; = "WidgetRemoteInvoke"

.field public static final TYPE_INVOKE_WIDGET_CLASS:Ljava/lang/String; = "type_invoke_widget_class"

.field public static final TYPE_INVOKE_WIDGET_ID:Ljava/lang/String; = "type_invoke_widget_id"

.field public static final WIDGET_KEY:Ljava/lang/String; = "widgetremoteinvoke_widget_key"

.field public static final WIDGET_VERSION_KEY:Ljava/lang/String; = "widgetremoteinvoke_widget_version_key"

.field private static volatile sInvoke:Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;
    .locals 2

    .line 43
    sget-object v0, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->sInvoke:Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->sInvoke:Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;

    invoke-direct {v1}, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;-><init>()V

    sput-object v1, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->sInvoke:Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->sInvoke:Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;

    return-object v0
.end method


# virtual methods
.method public getWidgetStates(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 129
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "widgetremoteinvoke_widget_key"

    .line 131
    invoke-virtual {v6, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "content://com.transsion.secondaryhome.widgetProvider"

    .line 132
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_remote_widget_state_by_id"

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->executeCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "result"

    .line 134
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendMessage err:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WidgetRemoteInvoke"

    invoke-static {p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getWidgetStates(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 109
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "widgetremoteinvoke_widget_key"

    .line 111
    invoke-virtual {v6, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "content://com.transsion.secondaryhome.widgetProvider"

    .line 112
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_remote_widget_state"

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->executeCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "result"

    .line 114
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendMessage err:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WidgetRemoteInvoke"

    invoke-static {p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getWidgetVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 157
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v0, "widgetremoteinvoke_widget_version_key"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "content://com.transsion.secondaryhome.widgetProvider"

    .line 160
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "get_remote_widget_version"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->executeCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "result"

    const-string p2, ""

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendMessage err:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WidgetRemoteInvoke"

    invoke-static {p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "0.0"

    return-object p0
.end method

.method public sendMessage(Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 6

    if-nez p5, :cond_0

    .line 88
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v5, p5

    :try_start_0
    const-string p5, "parent_id_key"

    .line 91
    invoke-virtual {v5, p5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "current_id_key"

    .line 92
    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "widgetremoteinvoke_widget_key"

    .line 93
    invoke-virtual {v5, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "content://com.transsion.secondaryhome.widgetProvider"

    .line 94
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "invoke_tran_remote"

    const-string v4, "type_invoke_widget_id"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->executeCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendMessage err:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WidgetRemoteInvoke"

    invoke-static {p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendMessage(Landroid/content/Context;IILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 6

    if-nez p5, :cond_0

    .line 66
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v5, p5

    :try_start_0
    const-string p5, "widgetremoteinvoke_widget_key"

    .line 69
    invoke-virtual {v5, p5, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p4, "parent_id_key"

    .line 70
    invoke-virtual {v5, p4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "current_id_key"

    .line 71
    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "content://com.transsion.secondaryhome.widgetProvider"

    .line 72
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "invoke_tran_remote"

    const-string v4, "type_invoke_widget_class"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/secondaryhome/tools/WidgetRemoteInvoke;->executeCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendMessage err:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WidgetRemoteInvoke"

    invoke-static {p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
