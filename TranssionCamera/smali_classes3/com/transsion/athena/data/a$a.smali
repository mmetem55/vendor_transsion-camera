.class Lcom/transsion/athena/data/a$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/data/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/athena/data/a$a;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/a$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/transsion/athena/data/a$a;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->l()I

    move-result p0

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-object p0, p0, Lcom/transsion/athena/data/a$a;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "DbHelper"

    const-string v0, "Creating a new Athena DB"

    .line 1
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    invoke-static {}, Lcom/transsion/athena/data/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/transsion/athena/data/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/transsion/athena/data/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/transsion/athena/data/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 14
    throw p0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Upgrading app, replacing Athena DB oldVersion = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "DbHelper"

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x4

    if-ge p2, p0, :cond_0

    .line 5
    invoke-static {}, Lcom/transsion/athena/data/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/transsion/athena/data/a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p0, 0x3

    if-ge p2, p0, :cond_1

    .line 11
    :try_start_1
    invoke-static {}, Lcom/transsion/athena/data/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x5

    if-ge p2, p0, :cond_2

    .line 14
    invoke-static {}, Lcom/transsion/athena/data/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x6

    if-ge p2, p0, :cond_3

    .line 17
    invoke-static {}, Lcom/transsion/athena/data/a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/transsion/athena/data/a;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 21
    :goto_1
    :try_start_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/transsion/athena/data/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/transsion/athena/data/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 27
    :try_start_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 30
    throw p0
.end method
