.class public Lcom/transsion/athena/data/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/data/a$a;,
        Lcom/transsion/athena/data/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;


# instance fields
.field private final j:Lcom/transsion/athena/data/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    .line 2
    invoke-virtual {v2}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "tid"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " INTEGER NOT NULL,"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "event"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " TEXT NOT NULL,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "et"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pi"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "created_at"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "uid"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " TEXT,"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ext"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "er_ts"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " INTEGER DEFAULT 0,"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "boot_id"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " TEXT)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->a:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/transsion/athena/data/a$b;->c:Lcom/transsion/athena/data/a$b;

    .line 14
    invoke-virtual {v13}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " INTEGER NOT NULL UNIQUE,"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "ev"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "pt"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "cf"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->b:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    .line 22
    invoke-virtual {v1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "try"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cnt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->c:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " TEXT"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->d:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->e:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " INTEGER"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->f:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->g:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS t_idx ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->h:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/data/a;->i:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/transsion/athena/data/a$b;->b:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v0}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/athena/data/a$a;

    invoke-direct {v0, p1, p2}, Lcom/transsion/athena/data/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteException;)V
    .locals 0

    .line 712
    :try_start_0
    instance-of p1, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    .line 713
    iget-object p0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_0

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 716
    iget-object p0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {p0}, Lcom/transsion/athena/data/a$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 719
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/data/a;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/transsion/athena/data/a$b;ILcom/transsion/athena/data/b;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            "I",
            "Lcom/transsion/athena/data/b<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    const-string v0, "_id"

    .line 461
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 464
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x0

    .line 466
    :try_start_0
    iget-object v3, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT _id,tid FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ORDER BY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " LIMIT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 471
    invoke-virtual {v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p2, "tid"

    if-eqz v2, :cond_0

    .line 472
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 p2, 0x0

    .line 474
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v4, v5, p2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v4, v5, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 476
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id<="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " AND CAST("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AS TEXT) NOT LIKE ?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "9999%"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p3, :cond_2

    .line 481
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 482
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/transsion/athena/data/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v2, :cond_3

    .line 483
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 484
    :try_start_2
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 485
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 487
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "cleanupEvents_oom_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v2, :cond_5

    .line 488
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_5
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;JJLjava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    .line 595
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 599
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " AND "

    const-string v4, "="

    const-string v5, "tid"

    const-string v6, " WHERE "

    const-string v7, "SELECT COUNT(*) FROM "

    if-eqz v2, :cond_0

    .line 600
    :try_start_1
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "created_at"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 603
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "uid"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 607
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 608
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 610
    :try_start_2
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 611
    new-instance p1, Lcom/transsion/ga/d;

    const-string p2, "queryEventList"

    invoke-direct {p1, p2, p0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 612
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 613
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 615
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "queryEventList_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    .line 616
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 617
    :cond_4
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/data/Track;I)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    const-string v2, "_eid"

    const-string v3, "There is not enough space left"

    const-string v4, "DbHelper"

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v6

    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v8

    .line 202
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v9

    invoke-virtual {v9}, Lathena/a;->c()Ljava/util/List;

    move-result-object v9

    .line 205
    :try_start_0
    iget-object v11, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const-string v12, "pi"

    const-string v13, " WHERE "

    const-string v14, "et"

    const-string v15, "="

    const-string v10, "tid"

    move-object/from16 v16, v2

    const/4 v2, 0x1

    move-object/from16 v17, v8

    const-string v8, "event"

    if-ne v0, v2, :cond_11

    .line 208
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v19, v3

    :try_start_2
    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 209
    invoke-virtual {v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    if-eqz v2, :cond_f

    .line 210
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 211
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move-object/from16 v22, v3

    .line 212
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v23, v15

    const/4 v15, -0x1

    if-eq v0, v15, :cond_6

    if-eqz v0, :cond_1

    .line 214
    :try_start_4
    invoke-static {v9}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/util/Collection;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_1

    :cond_0
    move-object v15, v3

    move-object/from16 v3, v22

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :catch_1
    move-exception v0

    goto/16 :goto_11

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 215
    sget-object v15, Lcom/transsion/athena/config/data/model/f;->n:[B

    goto :goto_2

    :cond_2
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 216
    :goto_2
    invoke-static {v3, v15, v0}, Lathena/q;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v29, v15

    move-object v15, v3

    move-object/from16 v3, v29

    :goto_3
    if-eqz v3, :cond_4

    if-nez v15, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v22, v4

    move-object/from16 v29, v9

    move-object v9, v3

    move-object v3, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v29

    goto :goto_5

    .line 217
    :cond_4
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 218
    iget-object v0, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v0}, Lcom/transsion/athena/data/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v15, v19

    .line 219
    invoke-static {v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, -0x1

    return v0

    :cond_6
    move-object/from16 v15, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v4

    :goto_5
    const-string v4, "\"%s\":\"%s\""

    move-object/from16 v24, v15

    if-nez v20, :cond_7

    move-object/from16 v15, v17

    .line 220
    :try_start_5
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v25, v13

    const/4 v1, 0x2

    :try_start_6
    new-array v13, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v13, v1

    const/4 v1, 0x1

    aput-object v17, v13, v1

    .line 221
    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catch_2
    move-object/from16 v25, v13

    :catch_3
    move-wide/from16 v27, v6

    move-object v6, v8

    move-object/from16 v26, v12

    move-object/from16 v13, v16

    const/4 v1, -0x1

    move-object/from16 v16, v10

    goto/16 :goto_d

    :cond_7
    move-object/from16 v25, v13

    move-object/from16 v15, v17

    move-object/from16 v1, v20

    .line 222
    :goto_6
    :try_start_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v17, v1

    const-string v1, "_eparam"

    if-eqz v13, :cond_a

    move/from16 v20, v13

    const-string v13, "ev_athena"

    move-object/from16 v26, v12

    .line 223
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    if-nez v21, :cond_8

    .line 225
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v13, v16

    :try_start_9
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-wide/from16 v27, v6

    move-object/from16 v16, v10

    const/4 v10, 0x2

    :try_start_a
    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x1

    aput-object v12, v6, v7

    .line 226
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    :catch_4
    move-wide/from16 v27, v6

    goto :goto_8

    :cond_8
    move-wide/from16 v27, v6

    move-object/from16 v13, v16

    const/4 v7, 0x1

    move-object/from16 v16, v10

    :goto_7
    move-object/from16 v4, v21

    .line 227
    :try_start_b
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v21, v4

    move/from16 v20, v6

    goto :goto_a

    :catch_5
    move-object/from16 v21, v4

    move-object v6, v8

    move-object/from16 v20, v17

    const/4 v1, -0x1

    goto/16 :goto_d

    :cond_9
    move-wide/from16 v27, v6

    goto :goto_9

    :catch_6
    move-wide/from16 v27, v6

    move-object/from16 v13, v16

    :goto_8
    move-object/from16 v16, v10

    :catch_7
    move-object v6, v8

    const/4 v1, -0x1

    goto/16 :goto_c

    :cond_a
    move-wide/from16 v27, v6

    move-object/from16 v26, v12

    move/from16 v20, v13

    :goto_9
    move-object/from16 v13, v16

    const/4 v7, 0x1

    move-object/from16 v16, v10

    :goto_a
    if-eqz v20, :cond_e

    :try_start_c
    const-string v4, "_id"

    .line 233
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object v6, v8

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 234
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/high16 v10, 0x20000

    const-string v12, "_id="

    if-ge v4, v10, :cond_d

    .line 235
    :try_start_d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 237
    :try_start_e
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/athena/config/data/model/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 242
    :try_start_f
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9, v0}, Lathena/q;->b(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 244
    :cond_b
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_c

    .line 247
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 248
    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v11, v5, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_13

    :cond_d
    const/4 v1, -0x1

    .line 253
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x2

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v5, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_e
    move-object v6, v8

    :catch_8
    const/4 v1, -0x1

    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object v8, v6

    move-object v3, v9

    move-object/from16 v10, v16

    move-object/from16 v20, v17

    move-object/from16 v9, v19

    move-object/from16 v4, v22

    move-object/from16 v19, v24

    move-object/from16 v12, v26

    move-wide/from16 v6, v27

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object/from16 v15, v23

    goto :goto_e

    :catch_9
    move-object/from16 v17, v1

    move-wide/from16 v27, v6

    move-object v6, v8

    move-object/from16 v26, v12

    move-object/from16 v13, v16

    const/4 v1, -0x1

    move-object/from16 v16, v10

    :goto_c
    move-object/from16 v20, v17

    :goto_d
    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object v8, v6

    move-object v3, v9

    move-object/from16 v17, v15

    move-object/from16 v10, v16

    move-object/from16 v9, v19

    move-object/from16 v4, v22

    move-object/from16 v15, v23

    move-object/from16 v19, v24

    move-object/from16 v12, v26

    move-wide/from16 v6, v27

    move-object/from16 v16, v13

    :goto_e
    move-object/from16 v13, v25

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_f
    move-object v10, v2

    move-object/from16 v5, v19

    goto/16 :goto_20

    :catch_a
    move-exception v0

    move-object/from16 v1, p0

    :goto_10
    move-object v10, v2

    move-object/from16 v5, v19

    goto/16 :goto_1e

    :catch_b
    move-exception v0

    move-object/from16 v1, p0

    :goto_11
    move-object v10, v2

    move-object/from16 v5, v19

    goto/16 :goto_1f

    :cond_f
    move-object/from16 v22, v4

    move-wide/from16 v27, v6

    move-object v6, v8

    move-object/from16 v16, v10

    move-object/from16 v26, v12

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    move-object/from16 v15, v17

    move-object/from16 v24, v19

    const/4 v1, -0x1

    :goto_12
    const/16 v18, 0x1

    :goto_13
    if-eqz v2, :cond_10

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v2

    goto/16 :goto_19

    :catch_c
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v2

    goto/16 :goto_1a

    :catch_d
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v2

    goto/16 :goto_1b

    :cond_10
    :goto_14
    move-object v3, v2

    move/from16 v2, v18

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, v19

    goto :goto_15

    :catch_e
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, v19

    goto :goto_16

    :catch_f
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, v19

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    move-object v5, v3

    :goto_15
    const/4 v10, 0x0

    goto/16 :goto_20

    :catch_10
    move-exception v0

    move-object/from16 v1, p0

    move-object v5, v3

    :goto_16
    const/4 v10, 0x0

    goto/16 :goto_1e

    :catch_11
    move-exception v0

    move-object/from16 v1, p0

    move-object v5, v3

    :goto_17
    const/4 v10, 0x0

    goto/16 :goto_1f

    :cond_11
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-wide/from16 v27, v6

    move-object v6, v8

    move-object/from16 v16, v10

    move-object/from16 v26, v12

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    move-object/from16 v15, v17

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_18
    if-eqz v2, :cond_14

    .line 257
    :try_start_10
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v0

    invoke-virtual {v0}, Lathena/a;->g()Landroid/util/Pair;

    move-result-object v0

    .line 258
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 259
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v4, v0, v2}, Lathena/q;->b(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 265
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 266
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v8, v16

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v26

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const-string v0, "created_at"

    .line 270
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    invoke-static/range {v27 .. v28}, Lathena/k0;->b(J)Z

    move-result v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v0, :cond_12

    const-string v0, "ext"

    .line 273
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v0, :cond_13

    const-string v0, "er_ts"

    .line 277
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getTrackErTs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    const-string v0, "boot_id"

    .line 278
    :try_start_14
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v2, 0x0

    .line 281
    invoke-virtual {v11, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_1c

    :catchall_5
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v3

    :goto_19
    move-object/from16 v4, v22

    move-object/from16 v5, v24

    goto/16 :goto_20

    :catch_12
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v3

    :goto_1a
    move-object/from16 v4, v22

    move-object/from16 v5, v24

    goto/16 :goto_1e

    :catch_13
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v3

    :goto_1b
    move-object/from16 v4, v22

    move-object/from16 v5, v24

    goto/16 :goto_1f

    :cond_14
    move-object/from16 v8, v16

    .line 285
    :goto_1c
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v10, :cond_15

    .line 286
    :try_start_16
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 287
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_1d

    :catchall_6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_19

    :catch_14
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1a

    :catch_15
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1b

    :cond_15
    move v8, v1

    :goto_1d
    if-eqz v10, :cond_16

    .line 288
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_16
    move-object/from16 v1, p0

    .line 289
    iget-object v0, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v0}, Lcom/transsion/athena/data/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_17

    move-object/from16 v4, v22

    move-object/from16 v5, v24

    .line 290
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x2

    :cond_17
    return v8

    :catchall_7
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, v22

    move-object/from16 v5, v24

    move-object v10, v3

    goto :goto_20

    :catch_16
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, v22

    move-object/from16 v5, v24

    move-object v10, v3

    goto :goto_1e

    :catch_17
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, v22

    move-object/from16 v5, v24

    move-object v10, v3

    goto :goto_1f

    :catchall_8
    move-exception v0

    move-object v5, v3

    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_20

    :catch_18
    move-exception v0

    move-object v5, v3

    const/4 v2, 0x0

    move-object v10, v2

    .line 291
    :goto_1e
    :try_start_17
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 292
    new-instance v2, Lcom/transsion/ga/d;

    const-string v3, "addJSON"

    invoke-direct {v2, v3, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_19
    move-exception v0

    move-object v5, v3

    const/4 v2, 0x0

    move-object v10, v2

    .line 293
    :goto_1f
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v10, :cond_18

    .line 294
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_18
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 296
    new-instance v2, Lcom/transsion/ga/d;

    const-string v3, "addJSON_sql"

    invoke-direct {v2, v3, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :catchall_9
    move-exception v0

    :goto_20
    if-eqz v10, :cond_19

    .line 297
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_19
    iget-object v1, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v1}, Lcom/transsion/athena/data/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 299
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1a
    throw v0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Ljava/util/List;Lcom/transsion/athena/data/b;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/Track;",
            ">;",
            "Lcom/transsion/athena/data/b<",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "There is not enough space left"

    const-string v3, "DbHelper"

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v4

    .line 306
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    .line 311
    :try_start_0
    iget-object v7, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 313
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 314
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v11, "tid"

    const/4 v12, 0x0

    if-eqz v10, :cond_2

    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/athena/data/Track;

    .line 315
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v13

    .line 317
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v14

    invoke-virtual {v14}, Lathena/a;->g()Landroid/util/Pair;

    move-result-object v14

    .line 318
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 319
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, [B

    invoke-static {v13, v14, v15}, Lathena/q;->b(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 325
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 326
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "event"

    .line 327
    invoke-virtual {v8, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v11, "et"

    .line 328
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v11, "pi"

    .line 329
    :try_start_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v11, "created_at"

    .line 330
    :try_start_5
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v11, :cond_1

    const-string v11, "er_ts"

    .line 333
    :try_start_6
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTrackErTs()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v11, "boot_id"

    .line 334
    :try_start_7
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    invoke-virtual {v7, v4, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 339
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 343
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 344
    new-instance v8, Landroid/util/LongSparseArray;

    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT tid,COUNT(*) FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WHERE "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN ("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 346
    invoke-static {v5, v4}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") GROUP BY "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-virtual {v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v5, v12

    :goto_1
    if-eqz v4, :cond_3

    .line 348
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 349
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 352
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 353
    invoke-interface {v0, v8}, Lcom/transsion/athena/data/b;->a(Ljava/lang/Object;)V

    :cond_4
    move v12, v5

    goto :goto_2

    :cond_5
    move-object v4, v6

    .line 356
    :goto_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_6

    .line 357
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 362
    iget-object v0, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v0}, Lcom/transsion/athena/data/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 363
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x2

    :cond_7
    return v12

    :catch_0
    move-exception v0

    move-object v6, v4

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v6

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v7, v6

    .line 364
    :goto_3
    :try_start_9
    sget-object v4, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 365
    new-instance v4, Lcom/transsion/ga/d;

    const-string v5, "addJSON"

    invoke-direct {v4, v5, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v4, v6

    move-object v7, v4

    .line 366
    :goto_4
    :try_start_a
    sget-object v5, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v4, :cond_8

    .line 367
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v7, :cond_9

    .line 368
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :cond_9
    move-object v6, v7

    .line 371
    :goto_5
    :try_start_b
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 372
    new-instance v5, Lcom/transsion/ga/d;

    const-string v7, "addJSON_sql"

    invoke-direct {v5, v7, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    move-object v7, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    :goto_6
    move-object v6, v4

    :goto_7
    if-eqz v6, :cond_a

    .line 373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v7, :cond_b

    .line 374
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 378
    :cond_b
    iget-object v1, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v1}, Lcom/transsion/athena/data/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_c

    .line 379
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_c
    throw v0
.end method

.method public a(Lcom/transsion/athena/data/a$b;JJLjava/lang/String;II)Lcom/transsion/athena/data/f;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v2, p8

    const-string v5, "_eparam"

    const-string v6, "net"

    const-string v7, ""

    const-string v8, "event"

    .line 618
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v0

    invoke-virtual {v0}, Lathena/a;->c()Ljava/util/List;

    move-result-object v9

    .line 619
    invoke-static {v9}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    return-object v10

    .line 623
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v0

    .line 625
    :try_start_0
    iget-object v11, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 627
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v13, "created_at"

    const-string v14, " AND "

    const-string v15, "="

    const-string v10, "tid"

    const-string v1, " WHERE "

    move-object/from16 v16, v5

    const-string v5, "SELECT * FROM "

    move-object/from16 v17, v6

    const-string v6, "_id"

    if-eqz v12, :cond_1

    .line 628
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ORDER BY "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " LIMIT "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_13

    .line 633
    :cond_1
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "uid"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' ORDER BY "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_0
    const/4 v1, 0x0

    .line 637
    :try_start_3
    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v14, :cond_10

    .line 638
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_e

    .line 641
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 646
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    .line 647
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 648
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-string v12, "pi"

    .line 650
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v10, "et"

    .line 651
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v12, v11, :cond_3

    .line 653
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v0, v11, v12}, Lathena/q;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-wide/16 v11, 0x0

    cmp-long v22, v18, v11

    if-nez v22, :cond_4

    .line 656
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    :cond_4
    if-eqz v0, :cond_b

    if-eqz v10, :cond_5

    const-string v10, "&add"

    .line 660
    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "&append"

    .line 661
    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 664
    :cond_5
    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v23, v11

    check-cast v23, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v11, v17

    .line 667
    :try_start_6
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 668
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v26, v12

    goto :goto_2

    :cond_6
    const/16 v26, 0x0

    :goto_2
    move-object/from16 v12, v16

    .line 671
    :try_start_7
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 672
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    goto :goto_3

    .line 674
    :cond_7
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    move-object/from16 v3, v16

    .line 677
    instance-of v4, v3, Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_9

    :try_start_8
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 678
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 679
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 680
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p6, v4

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v16, v7

    :try_start_9
    const-string v7, "_"

    .line 681
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 682
    move-object v7, v3

    check-cast v7, Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v17, v8

    :try_start_a
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v4, p6

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    goto :goto_4

    :cond_8
    move-object/from16 v4, p6

    move-object/from16 v7, v16

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v16, v7

    :goto_5
    move-object/from16 v17, v8

    goto :goto_6

    :cond_9
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 686
    new-instance v4, Lcom/transsion/athena/data/f$a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v27}, Lcom/transsion/athena/data/f$a;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    .line 688
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    add-int v3, v21, v0

    move/from16 v4, p7

    if-lt v3, v4, :cond_a

    .line 690
    :try_start_b
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move v11, v3

    move-wide v8, v6

    move-wide/from16 v6, v18

    move/from16 v10, v20

    goto :goto_b

    :catch_4
    move-exception v0

    move/from16 v21, v3

    goto :goto_8

    :cond_a
    move/from16 v21, v3

    goto :goto_a

    :catch_5
    move-exception v0

    :goto_6
    move/from16 v4, p7

    goto :goto_8

    :catch_6
    move-exception v0

    move/from16 v4, p7

    goto :goto_7

    :catch_7
    move-exception v0

    move/from16 v4, p7

    move-object/from16 v17, v8

    move-object/from16 v12, v16

    move-object/from16 v16, v7

    goto :goto_8

    :catch_8
    move-exception v0

    move/from16 v4, p7

    move-object/from16 v12, v16

    move-object/from16 v11, v17

    :goto_7
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 694
    :goto_8
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_b
    move/from16 v4, p7

    move-object/from16 v12, v16

    move-object/from16 v11, v17

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    :goto_9
    add-int/lit8 v15, v15, 0x1

    .line 700
    :goto_a
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v3, p2

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v17, v11

    move-object/from16 v16, v12

    goto/16 :goto_1

    :cond_c
    move-wide/from16 v6, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move-wide/from16 v8, v22

    .line 701
    :goto_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    if-lez v10, :cond_f

    add-int/2addr v15, v10

    if-gt v1, v15, :cond_e

    if-ne v1, v2, :cond_d

    if-ne v1, v15, :cond_d

    goto :goto_c

    :cond_d
    const/4 v0, 0x1

    move v12, v0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v12, 0x0

    .line 702
    :goto_d
    new-instance v0, Lcom/transsion/athena/data/f;

    move-object v2, v0

    move-wide/from16 v3, p2

    invoke-direct/range {v2 .. v12}, Lcom/transsion/athena/data/f;-><init>(JLjava/util/List;JJIIZ)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 703
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_f
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    move-object v10, v14

    goto :goto_14

    :catch_9
    move-exception v0

    move-object v10, v14

    goto :goto_12

    :catch_a
    move-exception v0

    move-object v10, v14

    goto :goto_13

    :cond_10
    :goto_e
    if-eqz v14, :cond_11

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_11
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    goto :goto_f

    :catch_b
    move-exception v0

    goto :goto_10

    :catch_c
    move-exception v0

    goto :goto_11

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    :goto_f
    move-object v10, v1

    goto :goto_14

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    :goto_10
    move-object v10, v1

    goto :goto_12

    :catch_e
    move-exception v0

    const/4 v1, 0x0

    :goto_11
    move-object v10, v1

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object v1, v10

    goto :goto_14

    :catch_f
    move-exception v0

    move-object v1, v10

    .line 704
    :goto_12
    :try_start_d
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 705
    new-instance v1, Lcom/transsion/ga/d;

    const-string v2, "queryEventList"

    invoke-direct {v1, v2, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_10
    move-exception v0

    move-object v1, v10

    .line 706
    :goto_13
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v10, :cond_12

    .line 707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object/from16 v1, p0

    .line 708
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 709
    new-instance v1, Lcom/transsion/ga/d;

    const-string v2, "queryEventList_sql"

    invoke-direct {v1, v2, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    :goto_14
    if-eqz v10, :cond_13

    .line 710
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 711
    :cond_13
    throw v0
.end method

.method public a(Lcom/transsion/athena/data/a$b;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    new-instance p1, Lcom/transsion/athena/data/AppIdData;

    invoke-direct {p1}, Lcom/transsion/athena/data/AppIdData;-><init>()V

    const-string v2, "appid"

    .line 138
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/transsion/athena/data/AppIdData;->a:I

    const-string v2, "base"

    .line 139
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    const-string v2, "uid"

    .line 140
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    const-string v2, "try"

    .line 141
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/transsion/athena/data/AppIdData;->d:I

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 144
    :try_start_1
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 147
    new-instance p0, Lcom/transsion/ga/d;

    const-string v0, "getAppIdList_sql"

    invoke-direct {p0, v0, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_3
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/config/data/model/TidConfigBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "tid"

    .line 101
    :try_start_1
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "ev"

    .line 102
    :try_start_2
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "pt"

    .line 103
    :try_start_3
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/g;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "cf"

    .line 104
    :try_start_4
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    :try_start_5
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 109
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "updateTidConfig_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :goto_0
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/config/data/model/a;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    const-string v0, "ext"

    .line 37
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 42
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "cfg"

    .line 45
    :try_start_2
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_4

    .line 50
    sget-object p1, Lcom/transsion/athena/data/a$b;->c:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p3, "CAST(tid AS TEXT) LIKE ?"

    const/4 v4, 0x1

    :try_start_3
    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 52
    invoke-virtual {v2, p1, p3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/a;->g()Ljava/util/List;

    move-result-object p1

    .line 55
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, "tid"

    if-eqz v5, :cond_1

    :try_start_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 57
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v8

    .line 58
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 59
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v6, "ev"

    .line 60
    :try_start_5
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v6, "pt"

    .line 61
    :try_start_6
    invoke-virtual {v8}, Lcom/transsion/athena/config/data/model/g;->i()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v6, "cf"

    .line 62
    :try_start_7
    invoke-virtual {v8}, Lcom/transsion/athena/config/data/model/g;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v6, Lcom/transsion/athena/data/a$b;->c:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v6}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 65
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT DISTINCT ext FROM "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v5}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 74
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {p3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 77
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 78
    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    sget-object v8, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v8}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/String;

    aput-object v5, v10, v7

    invoke-virtual {v2, v8, v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 80
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    move-object p1, v1

    .line 81
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_6

    .line 82
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_6

    :catch_0
    move-exception p2

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p1

    move-object p2, v1

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v2, v1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    .line 84
    :goto_3
    :try_start_9
    sget-object p3, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    .line 85
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    .line 86
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :cond_8
    move-object v1, v2

    .line 89
    :goto_4
    :try_start_a
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 90
    new-instance p0, Lcom/transsion/ga/d;

    const-string p3, "updateAppConfig_sql"

    invoke-direct {p0, p3, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p0

    move-object v2, v1

    goto :goto_5

    :catchall_4
    move-exception p0

    :goto_5
    move-object v1, p2

    :goto_6
    if-eqz v1, :cond_9

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v2, :cond_a

    .line 92
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    :cond_a
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Lcom/transsion/athena/data/AppIdData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "appid"

    .line 117
    :try_start_1
    iget v3, p2, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "base"

    .line 118
    :try_start_2
    iget-object v3, p2, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    .line 121
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    :try_start_3
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 126
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "addAppId_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :goto_0
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    const-string v0, "boot_id"

    .line 447
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "created_at"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "er_ts"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " + "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'\' WHERE "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 455
    :try_start_1
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 456
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 457
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "updateEvents_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :goto_0
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "uid"

    const-string v5, ""

    .line 158
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    .line 160
    sget-object v6, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v6}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, "CAST(tid AS TEXT) LIKE ? AND uid=?"

    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v4, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    iget-object v9, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    iget v4, v4, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    const-string p2, "try"

    .line 167
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appid IN ("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v1

    .line 181
    :goto_1
    :try_start_4
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_1
    move-object v1, v2

    .line 186
    :goto_2
    :try_start_5
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 187
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "updateAppIdList_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 193
    :cond_2
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/data/AppIdData;

    .line 387
    iget v1, v1, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object p2, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 390
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "try"

    add-int/lit8 p3, p3, 0x1

    .line 391
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appid IN ("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 394
    :try_start_2
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 396
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "updateEvents_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :goto_1
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/b;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/transsion/athena/data/b<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/data/g;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const-string v4, "_id"

    const-string v5, " AND "

    const-string v6, "tid="

    const-string v7, "appid"

    .line 490
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v8

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const/4 v10, 0x0

    .line 496
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/athena/data/AppIdData;

    .line 497
    iget v12, v12, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object v11, v1, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    :try_start_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 502
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v13}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " WHERE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " IN ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-virtual {v11, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const-string v0, "date"

    const-string v13, "ext"

    const-string v14, "cnt"

    if-eqz v12, :cond_4

    .line 504
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 505
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v10, 0x270f

    if-eq v15, v10, :cond_3

    const/16 v10, 0x407

    if-eq v15, v10, :cond_3

    const/16 v10, 0x411

    if-ne v15, v10, :cond_1

    goto :goto_3

    .line 510
    :cond_1
    :try_start_3
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 511
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 514
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v13, :cond_2

    .line 517
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 519
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    .line 522
    :goto_2
    new-instance v13, Lcom/transsion/athena/data/g;

    invoke-direct {v13, v15, v14, v10, v0}, Lcom/transsion/athena/data/g;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v9, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_3
    const/4 v10, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_4
    if-eqz v12, :cond_5

    .line 523
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 524
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/athena/data/AppIdData;

    .line 526
    iget-object v15, v10, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v17, 0x0

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p2, v7

    move-object/from16 v7, v18

    check-cast v7, Lcom/transsion/athena/data/f;

    move-object/from16 v18, v15

    .line 527
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    iget-wide v0, v7, Lcom/transsion/athena/data/f;->a:J

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v7, Lcom/transsion/athena/data/f;->c:J

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v7, Lcom/transsion/athena/data/f;->d:J

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v11, v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 532
    :try_start_7
    iget-boolean v0, v7, Lcom/transsion/athena/data/f;->g:Z

    if-eqz v0, :cond_6

    .line 533
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v1, "pt"

    .line 534
    :try_start_8
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    sget-object v1, Lcom/transsion/athena/data/a$b;->c:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    iget-wide v4, v7, Lcom/transsion/athena/data/f;->a:J

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {v11, v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v10, v5

    goto/16 :goto_a

    :cond_6
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 537
    :goto_6
    :try_start_a
    iget v0, v7, Lcom/transsion/athena/data/f;->e:I

    add-int v17, v17, v0

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v15, v18

    move-object/from16 v0, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v10, v1

    goto/16 :goto_a

    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 p2, v7

    .line 541
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 542
    iget v1, v10, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/data/g;

    if-eqz v1, :cond_c

    .line 544
    iget-object v4, v1, Lcom/transsion/athena/data/g;->b:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 545
    :cond_8
    iget v4, v10, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 547
    :cond_9
    iget-object v4, v1, Lcom/transsion/athena/data/g;->b:Ljava/lang/String;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_7

    .line 552
    :cond_a
    iget v4, v1, Lcom/transsion/athena/data/g;->c:I

    add-int v4, v4, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    iget v1, v1, Lcom/transsion/athena/data/g;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v1, v19

    .line 554
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "1"

    .line 556
    invoke-virtual {v0, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    :goto_8
    move-object/from16 v1, v19

    :goto_9
    const-string v4, "uid"

    const-string v5, ""

    .line 562
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v4, "try"

    const/4 v5, 0x0

    .line 563
    :try_start_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    sget-object v4, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v4}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "appid="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v10, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v10, 0x0

    :try_start_c
    invoke-virtual {v11, v4, v0, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v7, p2

    move-object v0, v1

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_d
    const/4 v10, 0x0

    .line 566
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-eqz v3, :cond_e

    .line 568
    invoke-interface {v3, v9}, Lcom/transsion/athena/data/b;->a(Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_e
    if-eqz v12, :cond_f

    .line 569
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_f
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catch_4
    move-exception v0

    const/4 v10, 0x0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    move-object v12, v10

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v11, v10

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v11, v10

    move-object v12, v11

    .line 571
    :goto_a
    :try_start_d
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v12, :cond_10

    .line 572
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v11, :cond_11

    .line 573
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v1, p0

    goto :goto_b

    :cond_11
    move-object/from16 v1, p0

    move-object v10, v11

    .line 576
    :goto_b
    :try_start_e
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 577
    new-instance v1, Lcom/transsion/ga/d;

    const-string v2, "cleanupEvents_sql"

    invoke-direct {v1, v2, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    move-object v11, v10

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_c
    move-object v10, v12

    :goto_d
    if-eqz v10, :cond_12

    .line 578
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v11, :cond_13

    .line 579
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 582
    :cond_13
    throw v0
.end method

.method public a(Lcom/transsion/athena/data/a$b;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, " AND "

    .line 400
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 404
    :try_start_0
    iget-object v4, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "uid"

    .line 406
    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 409
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/athena/data/AppIdData;

    .line 410
    iget-object v6, p3, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/athena/data/f;

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/transsion/athena/data/f;->a:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/transsion/athena/data/f;->c:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/transsion/athena/data/f;->d:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 416
    :cond_0
    iget p3, p3, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    const-string p1, "try"

    const/4 p2, 0x0

    .line 420
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    sget-object p1, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "appid IN ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, v5, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 422
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 433
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v4, v3

    .line 434
    :goto_2
    :try_start_3
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v4, :cond_2

    .line 436
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_2
    move-object v3, v4

    .line 439
    :goto_3
    :try_start_4
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 440
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "updateEvents_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception p0

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_3

    .line 443
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 446
    :cond_3
    throw p0
.end method

.method public a(Lcom/transsion/athena/data/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/b<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    const-string v0, "SELECT * FROM "

    .line 2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v5}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 6
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "cfg"

    .line 7
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9
    invoke-static {v5}, Lcom/transsion/athena/config/data/model/a;->a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/a;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "appid"

    .line 11
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/athena/config/data/model/a;->a(I)V

    .line 12
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_2

    :cond_1
    if-eqz v4, :cond_2

    .line 13
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/data/a$b;->c:Lcom/transsion/athena/data/a$b;

    invoke-virtual {v0}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 15
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "tid"

    .line 16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v0, "ev"

    .line 17
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v5, Lcom/transsion/athena/config/data/model/g;

    invoke-direct {v5}, Lcom/transsion/athena/config/data/model/g;-><init>()V

    const-string v6, "pt"

    .line 19
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/transsion/athena/config/data/model/g;->c(J)V

    const-string v6, "cf"

    .line 20
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/athena/config/data/model/g;->a(Ljava/lang/String;)V

    .line 22
    invoke-static {v3, v4}, Lathena/k0;->a(J)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/athena/config/data/model/a;

    if-eqz v6, :cond_3

    .line 24
    new-instance v7, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-direct {v7, v3, v4, v0, v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;-><init>(JLjava/lang/String;Lcom/transsion/athena/config/data/model/g;)V

    .line 25
    invoke-virtual {v6, v7}, Lcom/transsion/athena/config/data/model/a;->a(Lcom/transsion/athena/config/data/model/TidConfigBean;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 29
    invoke-interface {p1, v1}, Lcom/transsion/athena/data/b;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    if-eqz v2, :cond_6

    .line 30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 31
    :goto_2
    :try_start_3
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v2, :cond_7

    .line 32
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 33
    :cond_7
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 34
    new-instance p0, Lcom/transsion/ga/d;

    const-string v0, "getAPPIDApp_sql"

    invoke-direct {p0, v0, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v2, :cond_8

    .line 35
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_8
    throw p0
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 720
    :try_start_0
    iget-object p0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 722
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/athena/data/a$b;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    .line 583
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "CAST(tid AS TEXT) LIKE ?"

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {v0, p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 589
    :try_start_2
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 590
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 591
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "cleanupEvents_del_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    :goto_0
    throw p0
.end method

.method public b(Lcom/transsion/athena/data/a$b;Ljava/util/List;Lcom/transsion/athena/data/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/a$b;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/transsion/athena/data/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/d;
        }
    .end annotation

    const-string v0, ")"

    .line 2
    invoke-virtual {p1}, Lcom/transsion/athena/data/a$b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    .line 3
    invoke-static {p2, v1}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT tid FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "tid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-eqz v4, :cond_0

    .line 10
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 11
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 13
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tid IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 16
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 17
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/transsion/athena/data/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v4, :cond_3

    .line 18
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 19
    :goto_1
    :try_start_2
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/a;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 22
    new-instance p0, Lcom/transsion/ga/d;

    const-string p2, "cleanupEvents_off_sql"

    invoke-direct {p0, p2, p1}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_5

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_5
    throw p0
.end method

.method public j()V
    .locals 2

    const-string v0, "DbHelper"

    const-string v1, "deleteDB"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/transsion/athena/data/a;->j:Lcom/transsion/athena/data/a$a;

    invoke-virtual {p0}, Lcom/transsion/athena/data/a$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
