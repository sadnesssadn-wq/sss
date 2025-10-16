.class public Lc/b/k/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lc/b/k/a;


# instance fields
.field public a:Lc/b/k/e;

.field public b:Lc/b/k/f/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v0

    iget-object v0, v0, Lc/b/k/a;->b:Lc/b/k/f/b;

    const-string v1, "/"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {v0}, Lc/b/k/f/b;->a()V

    iget-object v0, v0, Lc/b/k/f/b;->b:Lc/b/k/f/a;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "SELECT * FROM caching WHERE request = \'%s\' "

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    iget-object v0, v0, Lc/b/k/f/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static b()Lc/b/k/a;
    .locals 2

    sget-object v0, Lc/b/k/a;->c:Lc/b/k/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v0

    iget-object v0, v0, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v1, "PREF_TOKEN_FCM"

    invoke-virtual {v0, v1}, Lc/b/k/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
