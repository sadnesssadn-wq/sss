.class public final synthetic Lc/d/a/a/j/t/i/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/t/i/y$d;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/i/a0;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/i/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/i/p;->a:Lc/d/a/a/j/t/i/a0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/a/j/t/i/p;->a:Lc/d/a/a/j/t/i/a0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
