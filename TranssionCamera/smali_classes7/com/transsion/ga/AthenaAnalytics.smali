.class public Lcom/transsion/ga/AthenaAnalytics;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ga/AthenaAnalytics$e;,
        Lcom/transsion/ga/AthenaAnalytics$d;,
        Lcom/transsion/ga/AthenaAnalytics$ConfigListener;,
        Lcom/transsion/ga/AthenaAnalytics$f;,
        Lcom/transsion/ga/AthenaAnalytics$ITranslator;
    }
.end annotation


# static fields
.field private static a:Lcom/transsion/ga/AthenaAnalytics$ITranslator; = null

.field private static volatile b:I = 0x1

.field private static volatile c:Lcom/transsion/ga/AthenaAnalytics; = null

.field private static volatile f:I = -0x1

.field private static volatile g:J

.field private static h:Ljava/lang/String;

.field private static i:Landroid/content/Context;

.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/transsion/ga/a;


# instance fields
.field private l:Lathena/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ga/AthenaAnalytics$a;

    invoke-direct {v0}, Lcom/transsion/ga/AthenaAnalytics$a;-><init>()V

    sput-object v0, Lcom/transsion/ga/AthenaAnalytics;->a:Lcom/transsion/ga/AthenaAnalytics$ITranslator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/transsion/ga/AthenaAnalytics;
    .locals 1

    .line 817
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    return-object v0
.end method

.method private static a(JZ)V
    .locals 4

    .line 818
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    sget-wide v0, Lcom/transsion/ga/AthenaAnalytics;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 823
    :cond_1
    sput-wide p0, Lcom/transsion/ga/AthenaAnalytics;->g:J

    .line 825
    :cond_2
    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->k:Lcom/transsion/ga/a;

    if-nez p0, :cond_3

    .line 826
    new-instance p0, Lcom/transsion/ga/a;

    invoke-direct {p0}, Lcom/transsion/ga/a;-><init>()V

    sput-object p0, Lcom/transsion/ga/AthenaAnalytics;->k:Lcom/transsion/ga/a;

    .line 827
    sget-wide p1, Lcom/transsion/ga/AthenaAnalytics;->g:J

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ga/a;->a(J)V

    .line 828
    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    check-cast p0, Landroid/app/Application;

    sget-object p1, Lcom/transsion/ga/AthenaAnalytics;->k:Lcom/transsion/ga/a;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 830
    :cond_3
    sget-wide p1, Lcom/transsion/ga/AthenaAnalytics;->g:J

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ga/a;->a(J)V

    :goto_0
    return-void
.end method

.method static a(Lcom/transsion/ga/AthenaAnalytics;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Z

    move-result p0

    if-nez p0, :cond_0

    .line 752
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Athena SDK isAthenaEnable = false"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 757
    :cond_0
    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 758
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isIMEIEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 759
    invoke-static {v0}, Lcom/transsion/ga/e;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "iid"

    invoke-virtual {p0, v2, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    .line 760
    invoke-static {v1}, Lcom/transsion/ga/e;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iid2"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 762
    :cond_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isIMSIEnable()Z

    move-result v0

    const-string v2, "isd2"

    const-string v3, "isd"

    if-eqz v0, :cond_2

    .line 763
    invoke-static {v1}, Lcom/transsion/ga/e;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    const/4 v4, 0x2

    .line 764
    invoke-static {v4}, Lcom/transsion/ga/e;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 766
    :cond_2
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isAndroidIDEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    invoke-static {}, Lcom/transsion/ga/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "aid"

    invoke-virtual {p0, v4, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 768
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 771
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "proc/rid"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array v4, v1, [B

    .line 773
    :goto_0
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 774
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/c;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-object v4, v5

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v4, :cond_4

    .line 781
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 786
    :cond_4
    :goto_2
    throw p0

    :catch_2
    :goto_3
    if-eqz v4, :cond_6

    move-object v5, v4

    .line 787
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    .line 790
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, ""

    goto :goto_5

    :cond_7
    invoke-static {v0}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v4, "chip"

    .line 795
    invoke-virtual {p0, v4, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    .line 796
    invoke-static {}, Lcom/transsion/ga/e;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sn"

    invoke-virtual {v0, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 799
    :try_start_4
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    const-string v4, "telephony_subscription_service"

    .line 800
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 801
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 803
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 804
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isIMSIEnable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 805
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Lcom/transsion/ga/e;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    goto :goto_6

    .line 806
    :cond_9
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v5, v1, :cond_8

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isIMSIEnable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 807
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Lcom/transsion/ga/e;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    :cond_a
    const/16 v0, 0x270f

    .line 815
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v1

    const-string v2, "device"

    .line 816
    invoke-virtual {v1, v2, p0, v0}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :goto_7
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 2

    .line 831
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->f:I

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 834
    :cond_0
    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    if-eqz p0, :cond_2

    .line 835
    new-instance p0, Landroid/content/Intent;

    sget v0, Lcom/transsion/ga/b;->$r8$clinit:I

    const-string v0, "com.transsion.athena.track_event"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "tid"

    .line 836
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p3, "eventName"

    .line 837
    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "trackData"

    .line 838
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 839
    sget-object p1, Lcom/transsion/athena/config/data/model/f;->h:Ljava/lang/String;

    .line 842
    sget-object p1, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    sget-object p1, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 844
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lathena/i;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method static a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 853
    :cond_0
    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->j:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 854
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic b()J
    .locals 2

    .line 745
    sget-wide v0, Lcom/transsion/ga/AthenaAnalytics;->g:J

    return-wide v0
.end method

.method static b(Lcom/transsion/ga/AthenaAnalytics;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Athena SDK isAthenaEnable = false"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 744
    :cond_0
    sget-wide v0, Lcom/transsion/ga/AthenaAnalytics;->g:J

    const/4 v2, 0x0

    const-string v3, "app_launch"

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    :goto_0
    return-void
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    return-object v0
.end method

.method private static e()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Lathena/i;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->l:Lathena/i;

    if-nez v0, :cond_3

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 2
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    invoke-static {v0}, Lathena/k0;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sput v1, Lcom/transsion/ga/AthenaAnalytics;->b:I

    .line 5
    :cond_0
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    sget v3, Lcom/transsion/ga/AthenaAnalytics;->b:I

    if-eq v3, v1, :cond_2

    if-eq v3, v2, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Lathena/j;->a(Landroid/content/Context;)Lathena/j;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Lathena/k;->a(Landroid/content/Context;)Lathena/k;

    move-result-object v0

    .line 8
    :goto_0
    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->l:Lathena/i;

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/transsion/ga/AthenaAnalytics;->l:Lathena/i;

    return-object p0
.end method

.method private static g()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getConfigListener()Lcom/transsion/ga/AthenaAnalytics$ConfigListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(I)Lcom/transsion/ga/AthenaAnalytics;
    .locals 2

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(J)Lcom/transsion/ga/AthenaAnalytics;
    .locals 6

    .line 2
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/transsion/ga/AthenaAnalytics;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/transsion/ga/AthenaAnalytics;

    invoke-direct {v1}, Lcom/transsion/ga/AthenaAnalytics;-><init>()V

    sput-object v1, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    .line 10
    sget v1, Lcom/transsion/ga/AthenaAnalytics;->f:I

    if-nez v1, :cond_0

    .line 11
    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    invoke-direct {v1}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    new-instance v2, Lcom/transsion/ga/AthenaAnalytics$d;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/transsion/ga/AthenaAnalytics$d;-><init>(Landroid/os/Handler;Lcom/transsion/ga/AthenaAnalytics$a;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    new-instance v2, Lcom/transsion/ga/AthenaAnalytics$c;

    invoke-direct {v2}, Lcom/transsion/ga/AthenaAnalytics$c;-><init>()V

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    new-instance v2, Lcom/transsion/ga/AthenaAnalytics$e;

    invoke-direct {v2, v1, v3}, Lcom/transsion/ga/AthenaAnalytics$e;-><init>(Landroid/os/Handler;Lcom/transsion/ga/AthenaAnalytics$a;)V

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 32
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lathena/k0;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    long-to-int p0, p0

    .line 34
    sget p1, Lcom/transsion/ga/AthenaAnalytics;->f:I

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/transsion/athena/data/c;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 35
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x190

    .line 36
    iput v0, p1, Landroid/os/Message;->what:I

    .line 37
    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 38
    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    invoke-direct {p0}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lathena/i;->a(Landroid/os/Message;J)V

    goto :goto_1

    .line 39
    :cond_2
    sget p1, Lcom/transsion/ga/AthenaAnalytics;->f:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-static {p0}, Lcom/transsion/athena/data/c;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "multi process appid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " register successful"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Athena"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    return-object p0
.end method

.method public static getPvTid()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/ga/AthenaAnalytics;->g:J

    return-wide v0
.end method

.method public static getTestToolAPI()Lathena/u;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTranslator()Lcom/transsion/ga/AthenaAnalytics$ITranslator;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->a:Lcom/transsion/ga/AthenaAnalytics$ITranslator;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 2

    if-eqz p0, :cond_5

    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_5

    const/16 v0, 0x270f

    if-gt p2, v0, :cond_5

    .line 2
    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    .line 5
    :cond_0
    invoke-static {p3}, Lcom/transsion/athena/config/data/model/f;->c(Z)V

    .line 6
    invoke-static {p1, p4}, Lcom/transsion/athena/config/data/model/f;->a(Ljava/lang/String;Z)V

    if-eqz p4, :cond_1

    .line 8
    invoke-static {p2}, Lcom/transsion/athena/data/c;->b(I)V

    int-to-long p3, p2

    const/4 p1, 0x0

    .line 9
    invoke-static {p3, p4, p1}, Lcom/transsion/ga/AthenaAnalytics;->a(JZ)V

    .line 11
    :cond_1
    sget-object p1, Lcom/transsion/ga/AthenaAnalytics;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/ga/c;->a(Landroid/content/Context;)V

    .line 12
    sget p1, Lcom/transsion/ga/AthenaAnalytics;->f:I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_4

    .line 13
    sget-object p1, Lcom/transsion/ga/AthenaAnalytics;->h:Ljava/lang/String;

    const/4 p3, 0x1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p4

    :goto_0
    if-eqz p1, :cond_3

    .line 19
    invoke-static {p0}, Lcom/transsion/ga/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMainProcess e = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Athena"

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move p1, p3

    :goto_1
    xor-int/2addr p1, p3

    .line 23
    sput p1, Lcom/transsion/ga/AthenaAnalytics;->f:I

    .line 24
    sget p1, Lcom/transsion/ga/AthenaAnalytics;->f:I

    if-nez p1, :cond_4

    .line 25
    :try_start_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    sget p3, Lcom/transsion/ga/b;->$r8$clinit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p3, "com.transsion.athena.track_event"

    :try_start_2
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 27
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.SCREEN_ON"

    .line 28
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.SCREEN_OFF"

    .line 29
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.location.PROVIDERS_CHANGED"

    .line 30
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    new-instance p3, Lcom/transsion/ga/b;

    invoke-direct {p3}, Lcom/transsion/ga/b;-><init>()V

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 33
    sget-object p3, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 34
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 35
    invoke-static {p2}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 36
    invoke-static {p0, p2}, Lathena/l0;->a(Landroid/content/Context;I)V

    return-void

    .line 37
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The parameter is illegal."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAndroidIDEnable()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->J:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDCSMode()Z
    .locals 2

    .line 1
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIMEIEnable()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->G:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isIMSIEnable()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/transsion/athena/config/data/model/f;->H:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setDebug(Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/athena/config/data/model/f;->c(Z)V

    .line 2
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->f:I

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Init method not called."

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    invoke-direct {v0}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Lcom/transsion/ga/AthenaAnalytics$b;

    invoke-direct {v1, p0}, Lcom/transsion/ga/AthenaAnalytics$b;-><init>(Z)V

    invoke-virtual {v0, v1}, Lathena/i;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static setTest(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/athena/config/data/model/f;->f(Z)V

    return-void
.end method

.method public static submitAll()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/ga/AthenaAnalytics;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    sget v1, Lcom/transsion/ga/AthenaAnalytics;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    sget v1, Lcom/transsion/ga/AthenaAnalytics;->f:I

    if-nez v1, :cond_1

    .line 658
    invoke-direct {v0}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 659
    invoke-direct {v0}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    move-result-object v0

    invoke-virtual {v0}, Lathena/i;->c()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(IJ)V
    .locals 1

    .line 845
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 848
    :cond_0
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->f:I

    if-nez v0, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 850
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 851
    iput p1, v0, Landroid/os/Message;->what:I

    .line 852
    invoke-direct {p0}, Lcom/transsion/ga/AthenaAnalytics;->f()Lathena/i;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p3}, Lathena/i;->a(Landroid/os/Message;J)V

    :cond_1
    return-void
.end method

.method public track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V
    .locals 2

    int-to-long v0, p3

    .line 610
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 2

    .line 1
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 590
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 596
    :cond_2
    invoke-static {p3, p4}, Lcom/transsion/athena/data/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 597
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The tid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " is not belong the app"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 603
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    goto :goto_2

    .line 605
    :cond_4
    new-instance p2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 608
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 609
    :cond_5
    :goto_3
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "The parameter tid or event name is illegal."

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public trackTimes(ILjava/lang/String;)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1, p2}, Lcom/transsion/ga/AthenaAnalytics;->trackTimes(JLjava/lang/String;)V

    return-void
.end method

.method public trackTimes(JLjava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "count"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method
