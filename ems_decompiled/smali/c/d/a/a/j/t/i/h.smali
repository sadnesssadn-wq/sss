.class public final synthetic Lc/d/a/a/j/t/i/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/t/i/y$b;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/i/y;

.field public final synthetic b:Lc/d/a/a/j/j;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/i/y;Lc/d/a/a/j/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/i/h;->a:Lc/d/a/a/j/t/i/y;

    iput-object p2, p0, Lc/d/a/a/j/t/i/h;->b:Lc/d/a/a/j/j;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lc/d/a/a/j/t/i/h;->a:Lc/d/a/a/j/t/i/y;

    iget-object v1, p0, Lc/d/a/a/j/t/i/h;->b:Lc/d/a/a/j/j;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lc/d/a/a/j/t/i/y;->e(Landroid/database/sqlite/SQLiteDatabase;Lc/d/a/a/j/j;)Ljava/lang/Long;

    move-result-object v2

    const/4 v12, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "_id"

    const-string v4, "transport_name"

    const-string v5, "timestamp_ms"

    const-string v6, "uptime_ms"

    const-string v7, "payload_encoding"

    const-string v8, "payload"

    const-string v9, "code"

    const-string v10, "inline"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, v0, Lc/d/a/a/j/t/i/y;->f:Lc/d/a/a/j/t/i/t;

    invoke-virtual {v2}, Lc/d/a/a/j/t/i/t;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "events"

    const-string v5, "context_id = ?"

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lc/d/a/a/j/t/i/j;

    invoke-direct {v3, v0, v11, v1}, Lc/d/a/a/j/t/i/j;-><init>(Lc/d/a/a/j/t/i/y;Ljava/util/List;Lc/d/a/a/j/j;)V

    invoke-static {v2, v3}, Lc/d/a/a/j/t/i/y;->l(Landroid/database/Cursor;Lc/d/a/a/j/t/i/y$b;)Ljava/lang/Object;

    .line 3
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/a/j/t/i/x;

    invoke-virtual {v2}, Lc/d/a/a/j/t/i/x;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "event_id"

    const-string v3, "name"

    const-string v4, "value"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "event_metadata"

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v1, Lc/d/a/a/j/t/i/i;

    invoke-direct {v1, v0}, Lc/d/a/a/j/t/i/i;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v1}, Lc/d/a/a/j/t/i/y;->l(Landroid/database/Cursor;Lc/d/a/a/j/t/i/y$b;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v11}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/j/t/i/x;

    invoke-virtual {v1}, Lc/d/a/a/j/t/i/x;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lc/d/a/a/j/t/i/x;->a()Lc/d/a/a/j/g;

    move-result-object v2

    invoke-virtual {v2}, Lc/d/a/a/j/g;->i()Lc/d/a/a/j/g$a;

    move-result-object v2

    invoke-virtual {v1}, Lc/d/a/a/j/t/i/x;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/a/j/t/i/y$c;

    iget-object v5, v4, Lc/d/a/a/j/t/i/y$c;->a:Ljava/lang/String;

    iget-object v4, v4, Lc/d/a/a/j/t/i/y$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lc/d/a/a/j/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/a/j/g$a;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lc/d/a/a/j/t/i/x;->b()J

    move-result-wide v3

    invoke-virtual {v1}, Lc/d/a/a/j/t/i/x;->c()Lc/d/a/a/j/j;

    move-result-object v1

    invoke-virtual {v2}, Lc/d/a/a/j/g$a;->b()Lc/d/a/a/j/g;

    move-result-object v2

    .line 5
    new-instance v5, Lc/d/a/a/j/t/i/r;

    invoke-direct {v5, v3, v4, v1, v2}, Lc/d/a/a/j/t/i/r;-><init>(JLc/d/a/a/j/j;Lc/d/a/a/j/g;)V

    .line 6
    invoke-interface {p1, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-object v11
.end method
