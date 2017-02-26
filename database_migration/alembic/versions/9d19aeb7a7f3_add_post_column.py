"""add post column

Revision ID: 9d19aeb7a7f3
Revises: 6514f5b66818
Create Date: 2017-02-26 10:50:32.863887

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '9d19aeb7a7f3'
down_revision = '6514f5b66818'
branch_labels = None
depends_on = None


def upgrade():
    op.add_column('posts', sa.Column('category_id', sa.Integer, nullable=False))


def downgrade():
    op.drop_column('posts', 'category_id')
