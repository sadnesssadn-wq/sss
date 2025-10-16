.class public final synthetic Lc/d/a/a/j/t/i/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/t/i/a0$a;


# static fields
.field public static final synthetic a:Lc/d/a/a/j/t/i/l;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/a/j/t/i/l;

    invoke-direct {v0}, Lc/d/a/a/j/t/i/l;-><init>()V

    sput-object v0, Lc/d/a/a/j/t/i/l;->a:Lc/d/a/a/j/t/i/l;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/a/j/t/i/a0;->e:Ljava/util/List;

    const-string v0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
