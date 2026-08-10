.class public Lcom/transsion/sort24/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"

# interfaces
.implements Lcom/transsion/sort/IContactLocale;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;,
        Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;
    }
.end annotation


# static fields
.field public static final LOCALE_ARABIC:Ljava/util/Locale;

.field public static final LOCALE_GREEK:Ljava/util/Locale;

.field public static final LOCALE_HEBREW:Ljava/util/Locale;

.field public static final LOCALE_SERBIAN:Ljava/util/Locale;

.field public static final LOCALE_THAI:Ljava/util/Locale;

.field public static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static final sDefaultLabelLocales:[Ljava/util/Locale;

.field private static sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;


# instance fields
.field private final mLocales:Lcom/transsion/sort24/LocaleSet;

.field private final mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 48
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    .line 49
    new-instance v1, Ljava/util/Locale;

    const-string v2, "el"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    .line 50
    new-instance v2, Ljava/util/Locale;

    const-string v3, "he"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    .line 52
    new-instance v3, Ljava/util/Locale;

    const-string v4, "sr"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    .line 53
    new-instance v4, Ljava/util/Locale;

    const-string v5, "uk"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    .line 54
    new-instance v5, Ljava/util/Locale;

    const-string v6, "th"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/util/Locale;

    .line 71
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 72
    sget-object v7, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 73
    sget-object v7, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x3

    aput-object v5, v6, v7

    const/4 v5, 0x4

    aput-object v0, v6, v5

    const/4 v0, 0x5

    aput-object v2, v6, v0

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const/4 v0, 0x7

    aput-object v4, v6, v0

    const/16 v0, 0x8

    aput-object v3, v6, v0

    .line 70
    sput-object v6, Lcom/transsion/sort24/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/sort24/LocaleSet;)V
    .locals 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 333
    invoke-static {}, Lcom/transsion/sort24/LocaleSet;->newDefault()Lcom/transsion/sort24/LocaleSet;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    goto :goto_0

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    .line 337
    :goto_0
    iget-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->shouldPreferJapanese()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 338
    new-instance p1, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;

    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-direct {p1, v0}, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    goto :goto_1

    .line 340
    :cond_1
    new-instance p1, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-direct {p1, v0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 342
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AddressBook Labels ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-virtual {v0}, Lcom/transsion/sort24/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils;->getLabels()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContactLocale"

    .line 342
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$0()[Ljava/util/Locale;
    .locals 1

    .line 70
    sget-object v0, Lcom/transsion/sort24/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/sort24/ContactLocaleUtils;
    .locals 3

    const-class v0, Lcom/transsion/sort24/ContactLocaleUtils;

    monitor-enter v0

    .line 351
    :try_start_0
    sget-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;

    if-nez v1, :cond_0

    .line 352
    new-instance v1, Lcom/transsion/sort24/ContactLocaleUtils;

    invoke-static {}, Lcom/transsion/sort24/LocaleSet;->newDefault()Lcom/transsion/sort24/LocaleSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/sort24/ContactLocaleUtils;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    sput-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;

    .line 354
    :cond_0
    sget-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setLocales(Lcom/transsion/sort24/LocaleSet;)V
    .locals 2

    const-class v0, Lcom/transsion/sort24/ContactLocaleUtils;

    monitor-enter v0

    .line 362
    :try_start_0
    sget-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/transsion/sort24/ContactLocaleUtils;->isLocale(Lcom/transsion/sort24/LocaleSet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    :cond_0
    new-instance v1, Lcom/transsion/sort24/ContactLocaleUtils;

    invoke-direct {v1, p0}, Lcom/transsion/sort24/ContactLocaleUtils;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    sput-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBucketIndex(Ljava/lang/String;)I
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 388
    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getLabels()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isLocale(Lcom/transsion/sort24/LocaleSet;)Z
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/LocaleSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
