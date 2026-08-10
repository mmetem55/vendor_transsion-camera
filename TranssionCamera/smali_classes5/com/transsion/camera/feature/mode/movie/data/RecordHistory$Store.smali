.class public Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;
.super Ljava/lang/Object;
.source "RecordHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Store"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private count:I

.field private height:I

.field private orientation:I

.field private themeId:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->context:Landroid/content/Context;

    return-void
.end method

.method private validParameter()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->themeId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->count:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->width:I

    if-lez v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->height:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public save()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->context:Landroid/content/Context;

    const-string v1, "movie_record"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->validParameter()Z

    move-result v1

    const-string v2, "height"

    const-string v3, "width"

    const-string v4, "orientation"

    const-string v5, "recordNum"

    const-string v6, "theme"

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->themeId:Ljava/lang/String;

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->count:I

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->orientation:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->width:I

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->height:I

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHeight(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;
    .locals 0

    .line 88
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->height:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;
    .locals 0

    .line 78
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->orientation:I

    return-object p0
.end method

.method public setRecordedCount(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;
    .locals 0

    .line 73
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->count:I

    return-object p0
.end method

.method public setThemeId(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->themeId:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;
    .locals 0

    .line 83
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory$Store;->width:I

    return-object p0
.end method
