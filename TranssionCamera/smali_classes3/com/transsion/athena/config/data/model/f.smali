.class public Lcom/transsion/athena/config/data/model/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static A:Ljava/lang/String; = ""

.field private static B:Z = false

.field public static C:Z = false

.field public static G:Z = true

.field public static H:Z = true

.field public static J:Z = true

.field private static K:Lorg/json/JSONObject; = null

.field private static L:Lorg/json/JSONObject; = null

.field private static M:Lorg/json/JSONObject; = null

.field private static N:Lorg/json/JSONObject; = null

.field private static O:Lorg/json/JSONObject; = null

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = null

.field public static j:Ljava/lang/String; = null

.field public static k:Ljava/lang/String; = null

.field public static l:Ljava/lang/String; = null

.field public static m:[B = null

.field public static n:[B = null

.field public static o:[B = null

.field private static p:Z = false

.field private static q:Ljava/lang/String; = "online"

.field private static r:J = 0x7530L

.field private static s:Ljava/lang/String; = ""

.field private static t:Ljava/lang/String; = ""

.field private static u:Z = true

.field private static v:Z = true

.field private static w:Z = false

.field private static x:I = 0xa00000

.field private static y:I

.field private static z:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->K:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->L:Lorg/json/JSONObject;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->M:Lorg/json/JSONObject;

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->N:Lorg/json/JSONObject;

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->O:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/f;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, -0x3c5549ad

    if-eq v1, v4, :cond_2

    const v4, 0x18415

    if-eq v1, v4, :cond_1

    const v4, 0x364492

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_5

    if-eqz p0, :cond_4

    .line 11
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->e:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    .line 12
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->c:Ljava/lang/String;

    goto :goto_2

    .line 13
    :cond_7
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->a:Ljava/lang/String;

    .line 25
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "debug.athena.test_mode"

    invoke-static {v1, v3, v2}, Lcom/transsion/athena/config/data/model/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p0, :cond_8

    .line 27
    sget-object p0, Lcom/transsion/athena/config/data/model/f;->b:Ljava/lang/String;

    :goto_3
    move-object v0, p0

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/transsion/athena/config/data/model/f;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_9
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)V
    .locals 3

    const-wide/16 v0, 0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    .line 34
    :cond_0
    sput-wide p0, Lcom/transsion/athena/config/data/model/f;->r:J

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 39
    :cond_1
    sput-object p0, Lcom/transsion/athena/config/data/model/f;->s:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "athena_ea"

    const-string v1, "athena_def"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "d"

    .line 3
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->a:Ljava/lang/String;

    const-string p0, "tu"

    .line 4
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->b:Ljava/lang/String;

    const-string p0, "tc"

    .line 5
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->c:Ljava/lang/String;

    const-string p0, "ou"

    .line 6
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->d:Ljava/lang/String;

    const-string p0, "oc"

    .line 7
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->e:Ljava/lang/String;

    const-string p0, "c"

    .line 8
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->f:Ljava/lang/String;

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "v2"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->g:Ljava/lang/String;

    const-string p0, "u"

    .line 10
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->h:Ljava/lang/String;

    const-string v4, "v3"

    .line 11
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->i:Ljava/lang/String;

    const-string p0, "fc"

    .line 12
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->j:Ljava/lang/String;

    const-string p0, "fd"

    .line 13
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->k:Ljava/lang/String;

    const-string p0, "fe"

    .line 14
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->l:Ljava/lang/String;

    const-string p0, "w"

    .line 15
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->n:[B

    const-string p0, "iv"

    .line 16
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/f;->o:[B

    .line 18
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object p0

    .line 20
    :try_start_0
    invoke-virtual {p0, v1}, Lathena/n0;->b(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 21
    invoke-virtual {p0, v0}, Lathena/n0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "AES"

    .line 23
    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    const/16 v3, 0x80

    .line 24
    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 25
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/c;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p0, v0, v2}, Lathena/n0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->m:[B

    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->n:[B

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->m:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v1, v0}, Lathena/n0;->a(Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->n:[B

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->m:[B

    :goto_0
    const-string v0, "custom_track_params"

    .line 40
    invoke-virtual {p0, v0}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/athena/config/data/model/f;->K:Lorg/json/JSONObject;

    :cond_2
    const-string v0, "app_active_params"

    .line 45
    invoke-virtual {p0, v0}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/athena/config/data/model/f;->L:Lorg/json/JSONObject;

    :cond_3
    const-string v0, "page_enter_params"

    .line 50
    invoke-virtual {p0, v0}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/athena/config/data/model/f;->M:Lorg/json/JSONObject;

    :cond_4
    const-string v0, "app_launch_params"

    .line 55
    invoke-virtual {p0, v0}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/athena/config/data/model/f;->N:Lorg/json/JSONObject;

    :cond_5
    const-string v0, "app_heartbeat_params"

    .line 60
    invoke-virtual {p0, v0}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/config/data/model/f;->O:Lorg/json/JSONObject;

    :cond_6
    return-void
.end method

.method public static c()S
    .locals 1

    .line 4
    sget-short v0, Lcom/transsion/athena/config/data/model/f;->z:S

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 3
    sput-object p0, Lcom/transsion/athena/config/data/model/f;->t:Ljava/lang/String;

    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/athena/config/data/model/f;->p:Z

    return-void
.end method

.method public static d()Lorg/json/JSONObject;
    .locals 1

    .line 11
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->L:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/athena/config/data/model/f;->B:Z

    return-void
.end method

.method public static f()Lorg/json/JSONObject;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->O:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static f(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "test"

    goto :goto_0

    :cond_0
    const-string p0, "online"

    .line 1
    :goto_0
    sput-object p0, Lcom/transsion/athena/config/data/model/f;->q:Ljava/lang/String;

    return-void
.end method

.method public static g()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->N:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->K:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/athena/config/data/model/f;->y:I

    return v0
.end method

.method public static l()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/athena/config/data/model/f;->x:I

    return v0
.end method

.method public static m()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->M:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static o()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/athena/config/data/model/f;->r:J

    return-wide v0
.end method

.method public static p()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->v:Z

    return v0
.end method

.method public static r()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->p:Z

    return v0
.end method

.method public static s()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->u:Z

    return v0
.end method

.method public static t()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->B:Z

    return v0
.end method

.method public static u()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->q:Ljava/lang/String;

    const-string v1, "online"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->w:Z

    return v0
.end method

.method public static w()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/f;->q:Ljava/lang/String;

    const-string v1, "test"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
