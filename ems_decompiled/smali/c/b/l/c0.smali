.class public Lc/b/l/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic a:Lc/b/l/e0;


# direct methods
.method public constructor <init>(Lc/b/l/e0;)V
    .locals 0

    iput-object p1, p0, Lc/b/l/c0;->a:Lc/b/l/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    iget-object p1, p0, Lc/b/l/c0;->a:Lc/b/l/e0;

    .line 1
    iput p2, p1, Lc/b/l/e0;->t:I

    add-int/lit8 p3, p3, 0x1

    .line 2
    iput p3, p1, Lc/b/l/e0;->u:I

    .line 3
    iput p4, p1, Lc/b/l/e0;->v:I

    const-string p2, "0"

    const/16 v0, 0xa

    const-string v1, "/"

    if-lt p3, v0, :cond_1

    if-lt p4, v0, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    :goto_0
    iget-object p3, p0, Lc/b/l/c0;->a:Lc/b/l/e0;

    .line 5
    iget p3, p3, Lc/b/l/e0;->v:I

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string p3, "/0"

    if-lt p4, v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    :goto_1
    iget-object p4, p0, Lc/b/l/c0;->a:Lc/b/l/e0;

    .line 7
    iget p4, p4, Lc/b/l/e0;->v:I

    .line 8
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object p3, p0, Lc/b/l/c0;->a:Lc/b/l/e0;

    .line 9
    iget p3, p3, Lc/b/l/e0;->u:I

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lc/b/l/c0;->a:Lc/b/l/e0;

    .line 11
    iget p3, p3, Lc/b/l/e0;->t:I

    .line 12
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    iput-object p2, p1, Lc/b/l/e0;->z:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lc/b/l/c0;->a:Lc/b/l/e0;

    .line 15
    iget-object p2, p1, Lc/b/l/e0;->z:Ljava/lang/String;

    const/4 p3, 0x0

    .line 16
    invoke-virtual {p1, p2, p3}, Lc/b/l/e0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
