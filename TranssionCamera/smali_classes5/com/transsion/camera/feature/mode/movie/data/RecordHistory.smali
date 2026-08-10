.class public Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;
.super Ljava/lang/Object;
.source "RecordHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;
    }
.end annotation


# static fields
.field public static final NULL_THEME:Ljava/lang/String; = "null"

.field private static final RECORD_FILE:Ljava/lang/String; = "movie_record"

.field private static final RECORD_HEIGHT:Ljava/lang/String; = "height"

.field private static final RECORD_NUM:Ljava/lang/String; = "recordNum"

.field private static final RECORD_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final RECORD_WIDTH:Ljava/lang/String; = "width"

.field private static final THEME:Ljava/lang/String; = "theme"


# instance fields
.field public final count:I

.field public final height:I

.field public final orientation:I

.field public final themeId:Ljava/lang/String;

.field public final width:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "movie_record"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "theme"

    const-string v2, "null"

    .line 44
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->themeId:Ljava/lang/String;

    const-string v0, "recordNum"

    .line 45
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->count:I

    const-string v0, "orientation"

    .line 46
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->orientation:I

    const-string v0, "width"

    .line 47
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->width:I

    const-string v0, "height"

    .line 48
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->height:I

    return-void
.end method

.method public static deleteHistory(Landroid/content/Context;)V
    .locals 2

    const-string v0, "movie_record"

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "theme"

    .line 18
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "recordNum"

    .line 19
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "orientation"

    .line 20
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "width"

    .line 21
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "height"

    .line 22
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getRecordedCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "movie_record"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "recordNum"

    .line 33
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRecordedTheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "movie_record"

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "theme"

    const-string v1, "null"

    .line 28
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readHistory(Landroid/content/Context;)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;
    .locals 1

    .line 52
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
